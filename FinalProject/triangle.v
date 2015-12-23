`timescale 100ps/10ps
module triangle(clk, reset, nt, xi, yi, busy, po, xo, yo);
input clk, reset, nt;
input [2:0] xi, yi;
output busy, po;
output [2:0] xo, yo;

wire clk, reset, nt;
wire [2:0] xi, yi;
reg  [2:0] xo, yo, x_min, x_max, y_min, y_max, x, y;
reg  [2:0] xi_ff[2:0], yi_ff[2:0];
reg busy, good, mul_en, sub_en, check, rst_int, inc_y, inc_x; //internal reset
reg po, po_, on_line, right_line , right_triangle, top_line; //right_triangle = 1 means right, 0 means left
reg signed [6:0] sub_ans , sub_op0, sub_op1, mul_op0, mul_op1;
reg signed [6:0] mul_ans, A, B, C0, D0, C1, D1, AD, BC, RLO;
reg  [3:0] control, control_1;


always @ (posedge clk)begin
  
  if(reset || rst_int) begin
	xi_ff[0] <= 0;
	xi_ff[1] <= 0;
	xi_ff[2] <= 0;
		
	yi_ff[0] <= 0;
	yi_ff[1] <= 0;
	yi_ff[2] <= 0;
	
	x_min <= 7;
	x_max <= 0;
	y_min <= 7;
	y_max <= 0;
		
	//on_line <= 0;
	//right_line <= 0;
	top_line <= 0;
	
	//right_triangle <= 0;

	A <= 0;
	B <= 0;
	C0 <= 0;
	C1 <= 0;
	D0 <= 0;
	D1 <= 0;
	AD <= 0;
	BC <= 0;
	RLO <= 0;
	
	
	control <= 0;
	check <= 0;
	
	//x <= 0;
	//y <= 0;
		
	xo <= 0;
	yo <= 0;

	busy <= 0;
	//good <= 0;
	//po  <= 0;
	//po_ <= 0;
	rst_int <= 0;
	inc_y <= 0;
	inc_x <= 0;
	
  end
  
	else begin

		if(control)begin
			//control <= control_1;
			if(control < 13)control <= control + 1;
			else if(x == x_min) control <= 7;
			else control <= 9;
		end
		else if(nt)begin
			xi_ff[0] <= xi;
			yi_ff[0] <= yi;
			control <= 1;
		end

			 
		if(control < 6)begin
			if(xi > x_max) x_max <= xi;
			if(xi < x_min) x_min <= xi;
			if(yi > y_max) y_max <= yi;
			if(yi < y_min) y_min <= yi;
		end
		else begin
			if(y > yi_ff[1])top_line <= 1;
			else top_line <= 0;
		end
		
		case(control)
			
			1: begin		
				xi_ff[1] <= xi;
				yi_ff[1] <= yi;
				busy <= 1;
			end
		  
			2: begin 
				xi_ff[2] <= xi;
				yi_ff[2] <= yi;
			end
			3: begin 
				C0  <= sub_ans;
			end
		  
			4: begin		
				D0 <= sub_ans;
			end
			
			5: begin		
				C1 <= sub_ans;
				inc_y <= 1;
			end
			
			6: begin
				D1 <= sub_ans;
				inc_y <= 0;
			end
			
			7: begin	//B = Y-Y1   B should be calculated first because it remains the same for all values on this row
					//it will return here if there is a new row with a new y value
				if(check)check <= 0;
				B <=  sub_ans;
				if(inc_y)inc_y <= 0;	//resets inc_y back to zero to prevent extra incramenting
				if(inc_x)inc_x <= 0;	//resets inc_x back to zero to prevent extra incramenting
			end
		  
			8:begin		//BC = B*C   BC should be calculated first because it remains the same for all values on this row
				BC <= mul_ans;
			end
			
			9: begin	//A = X-X1   It will return here if it is just a new value of x
				if(check)check <= 0;	
				A <= sub_ans;
				if(inc_y)inc_y <= 0;	//resets inc_y back to zero to prevent extra incramenting
				if(inc_x)inc_x <= 0;	//resets inc_x back to zero to prevent extra incramenting
			end

			10: begin		
				AD <=  mul_ans;
			end
			  
			11: begin 	//B = ans
				RLO <= sub_ans;
			end
			  
			12: begin	
				check <= 1;	//check should be high for 2 clock cycles to pulse po and check for valid
				xo <= x;
				yo <= y;
			end
			  
			13: begin	
				if(yo >= y_max)begin
					if(right_triangle ^ (xo == x_max)) rst_int <= 1;
					else if(xo == x_max)	rst_int <= 1;
				end
				if((x == x_max) || ~good && right_triangle && ~inc_y) inc_y <= 1;
				if((po_ || ~right_triangle) && ~inc_y) inc_x <= 1;
			end
			
		endcase
			

	end//else begin


end//always @ (posedge clk)begin

always @(negedge clk) begin
	if(inc_y)begin
		if((control == 6)) y <= y_min;
		else y <= y + 1;
		x <= x_min;
	end
	else if(inc_x) x <= x + 1;

	if(check)begin

		if(good)begin
			if(po)po<=0;
			else begin 
				po <= 1;
				po_ <= 1; // on the positive edge of po, po_ is set to 1
			end
		end//if(good)begin
		else begin
			po_ <= 0; // on the negative edge of po, po_ should be set to 0
		end//else(~good)
	end //if(check)begin
	
end //always @(negedge clk) begin


always@(posedge check)begin
	if(((x == xi_ff[0]) && (y==yi_ff[0]))  ||  ((x == xi_ff[1]) && (y == yi_ff[1]))  ||  ((x == xi_ff[2]) && (y == yi_ff[2]))) good <= 1;
	else if((right_triangle ~^ right_line) || on_line) good <= 1;
	else good <= 0;
end


always @(*) begin //multiplier and adder modules
	if(sub_en) sub_ans = sub_op0 - sub_op1;//multiplier block
	if(mul_en) mul_ans = mul_op0 * mul_op1;//adder block
end

always @(*) begin
	if(xi_ff[1]>xi_ff[0]) right_triangle = 1;
	else right_triangle = 0;
end

always @(*) begin
	if((RLO == 0) || (x == xi_ff[0]))begin
		on_line = 1;
		right_line = 0;
	end 
	else begin
		on_line = 0;
		if(~top_line)right_line = RLO[6];
		else right_line = ~RLO[6];
	end
end


always @(*) begin	//control logic
	//if(control < 13) //determines next control
	//	control_1 = control + 1;
	//else control_1 = 7;

	case(control)
		0: begin	
			
		end
		  
		1: begin	
			
		end
		  
		3: begin 	//C0 = X2-X1
			sub_en = 1;
			sub_op0 = xi_ff[1];
			sub_op1 = xi_ff[0];				
		end
		  
		4: begin	//D0 = Y2-Y1 
			sub_en = 1;
			sub_op0 = yi_ff[1];
			sub_op1 = yi_ff[0];
		end
		
		5:begin		//C1 = x2-x3 
			
			sub_en = 1;	  
			sub_op0 = xi_ff[1];
			sub_op1 = xi_ff[2]; 
		end
	
		6: begin	//D1 = Y2-Y3 
			
			sub_en = 1;
			sub_op0 = yi_ff[1];
			sub_op1 = yi_ff[2];	
		end

		7: begin	//B = Y-Y1
			sub_en = 1;
			mul_en = 0;
			sub_op0 = y;
			if(~top_line)sub_op1 = yi_ff[0];	
			else sub_op1 = yi_ff[2];	
		end
	
		8: begin	//BC = B*C 
			sub_en = 0;
			mul_en = 1;
			mul_op0 = B;
			if(~top_line)mul_op1 = C0;
			else mul_op1 = C1;
		end

		9: begin	//A = X-X1
			sub_en = 1;
			mul_en = 0;
			sub_op0 = x;
			if(~top_line)sub_op1 = xi_ff[0];
			else sub_op1 = xi_ff[2];
		end
		  
		10: begin	//AD = A*D
			sub_en = 0;
			mul_en = 1;
			mul_op0 = A;
			if(~top_line)mul_op1 = D0;
			else mul_op1 = D1;
		end
		  
		11: begin	//RLO = AB-CD
			mul_en = 0;
			sub_en = 1;
			sub_op0 = AD;
			sub_op1 = BC;	
		end
		  
		12: begin
			sub_en = 0;
			mul_en = 0;
		end
					
	endcase
end

endmodule
 
  
