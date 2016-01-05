
//`timescale 1ns/1ps

module GCC( CLK, RESET, Xi, Yi, Wi, READY, Xc, Yc, node[0], node[1], node[2], node[3], node[4], node[5]);
  
  input         CLK, RESET;
  input  [7:0]  Xi,Yi;
  input  [3:0]  Wi;
  output  reg      READY;
  output reg [7:0]  Xc, Yc;
  output reg [36:0] node[0:5];
  
  
  reg    [4:0]   counter, count,countx;
  
  reg    [15:0]  numX, denX, numY, denY;
  
  reg    [36:0]  tempn,tempnn;
  
  reg    [3:0]  k,i,flag;
  
  reg           compD, compX, compY, compW, insert, calD;
  
  reg    [5:0]  saveD, saveX, saveY, saveW;
  




  
  //assign Xc = numX/denX;
  //assign Yc = numY/denY;
  
  
    
always@(posedge CLK or negedge RESET) begin
  
  if(!RESET) begin
    

    READY <= 0;
    counter <= 0;
    count <= 0;
    countx <= 0;

    
    node[0] <= 0;
    node[1] <= 0;
    node[2] <= 0;
    node[3] <= 0;
    node[4] <= 0;
    node[5] <= 0;
    /home/anhho7/Desktop/EE465/labpartners/GCC.v
    
    tempn <= 0;
    tempnn <= 0;
    
    
    numX <= 0;
    denX <= 0;
    numY <= 0;
    denY <= 0;
 
    /home/anhho7/Desktop/EE465/labpartners/GCC.v
    k <= 0;
    i <= 0;
    
    compD <= 0;
    compX <= 0;
    compY <= 0;
    compW <= 0;
  
    insert <= 0;
    calD <= 0;
    flag <= 0;
    
    saveD <= 0;//6'b111111;
    saveX <= 0;//6'b111111;
    saveY <= 0;//6'b111111;
    saveW <= 0;//6'b111111;
   
  end
  
  else if (count < 6) begin
    
    
    node[count][36:29] <= Xi;
    node[count][28:21] <= Yi;
    node[count][20:17]  <= Wi;
    
    
    
    counter <= counter +1;
    count <= counter;
    countx <= count;
    
    
    numX <= numX + node[countx][36:29]* node[countx][20:17];
    denX <= denX + node[countx][20:17];
    numY <= numY + node[countx][28:21]* node[countx][20:17];
    denY <= denY + node[countx][20:17]; 
    
    READY <= 1;
    
  end

  
  else if (count == 6) begin
  

    if(countx == 5) begin
    
    numX <= numX + node[countx][36:29]* node[countx][20:17];
    denX <= denX + node[countx][20:17];
    numY <= numY + node[countx][28:21]* node[countx][20:17];
    denY <= denY + node[countx][20:17];
    
    countx <= 8; 
    
        READY <= 1;  
    end

   else;
     
    
     
    tempnn[36:29] <= Xi;
    tempnn[28:21] <= Yi;
    tempnn[20:17] <= Wi;
    
    tempn <= tempnn;
    
    
    if(calD ==1)begin
      
      node[0][16:0] <= (node[0][36:29] - Xc)*(node[0][36:29] - Xc) + (node[0][28:21] - Yc)*(node[0][28:21] - Yc);
   
      node[1][16:0] <= (node[1][36:29] - Xc)*(node[1][36:29] - Xc) + (node[1][28:21] - Yc)*(node[1][28:21] - Yc);
  
      node[2][16:0] <= (node[2][36:29] - Xc)*(node[2][36:29] - Xc) + (node[2][28:21] - Yc)*(node[2][28:21] - Yc);
   
      node[3][16:0] <= (node[3][36:29] - Xc)*(node[3][36:29] - Xc) + (node[3][28:21] - Yc)*(node[3][28:21] - Yc);
   
      node[4][16:0] <= (node[4][36:29] - Xc)*(node[4][36:29] - Xc) + (node[4][28:21] - Yc)*(node[4][28:21] - Yc);  
   
      node[5][16:0] <= (node[5][36:29] - Xc)*(node[5][36:29] - Xc) + (node[5][28:21] - Yc)*(node[5][28:21] - Yc);
      
      tempn[16:0]  <= (tempn[36:29] -Xc) *(tempn[36:29] - Xc) + (tempn[28:21] - Yc) *(tempn[28:21] - Yc);
      
      calD <= 0;
      compD <= 1;
      
    end
  else ;
    
    
    
  end

  else;

end



//always@(ready) begin
  
// case(ready)
//    1'b1: begin
      
//      if(denX == 0) 
//                  Xc = 0;
         
//      else if(( numX - (numX/denX)*denX) < ((denX+1)/2) )
//        
 //                 Xc = numX/denX;
//      else
        
 //                Xc = numX/denX +1; 
                    
 //     if(denY == 0)
 //                Yc = 0;
                          
 //     else if(( numY -(numY/denY)*denY) < ((denY+1)/2) )
        
 //                 Yc = numY/denY;
                  
 //     else
        
 //                 Yc = numY/denY +1;  
                  
 //    ready = 0;
                                      
                  
 //     end
      
      
 //   1'b0: ;
 // endcase
//end




always@(READY) begin
  
  case(READY)
    1'b1: begin
      
      if(denX == 0)
           Xc = 0;
          
      else if(( numX - (numX/denX)*denX) < ((denX+1)/2) )
        
         Xc = numX/denX;
         
      else
        
        Xc = numX/denX +1;    
       
       if(denY == 0)
         Yc = 0;
       else if(( numY -(numY/denY)*denY) < ((denY+1)/2) )
        
         Yc = numY/denY;
         
       else
         
         Yc = numY/denY +1;   
          
     READY = 0;
     if(countx < 6)
       
     calD = 0;
     
     else begin
       calD  = 1;
     end
           
    end
    1'b0: ;
  endcase
end



always@(compD) begin
  
  case(compD)
    1'b1:  begin
      
      saveD = 6'b111111;
      
     for(k = 0; k <6; k = k+1) begin
      for(i = 0; i < 6; i= i+1) begin
          if(saveD[i] == 0);
        else begin
          saveD[i] = (node[i][16:0] < node[k][16:0]) ? 0 : 1;
        end
      end
     end
    
    flag = 0;
    
    for(i = 0; i <6; i = i+1) begin
      if(saveD[i] == 1) 
         flag = flag +1;
       else;
    end
    
    if(flag == 1) begin
      insert = 1;
      compD = 0;
    end
    else begin
      compD = 0;
      compX = 1;
    end
      
  end

  1'b0: ;
  endcase

end


always@(compX) begin
  
  case(compX)
    1'b1: begin
      
      saveX = 6'b111111;
      
      for(k = 0; k < 6; k = k+1) begin
        for(i = 0; i <6; i = i+1)begin
          if(saveD[k] == 0) 
            saveX[k] = 0;
          else begin 
            
            if(saveD[i] == 0) 
               saveX[i] = 0;
            else begin
              saveX[i] = (node[i][36:29]> node[k][36:29]) ? 0:1;
              saveD[i] = (node[i][36:29]> node[k][36:29]) ? 0:1;
            end
              
          end
        end
      end
      
      flag = 0;
      for(i = 0; i <6; i = i+1) begin
        if(saveX[i] == 1)
          flag  =flag +1;
        else
          saveD[i] = 0;
          
    end
    
    if(flag == 1) begin
       insert = 1;
       compX = 0;
     end
     else begin
       compX = 0;
       compY = 1;
     end
   end
   1'b0: ;
   endcase
end
 
always@(compY) begin

  case(compY)
    1'b1: begin
      
      saveY = 6'b111111;
    
      for(k = 0; k <6; k = k+1) begin
        for(i = 0; i< 6; i = i+1) begin
          if(saveD[k] == 0)  
             saveY[k] = 0;
          else  begin
            
            if(saveD[i] == 0)
                saveY[i] = 0;
            else begin
             saveY[i] = (node[i][28:21] > node[k][28:21]) ? 0:1;
             saveD[i] = (node[i][28:21] > node[k][28:21]) ? 0:1;
           end
             
          end
        end
      end
      
      flag = 0;
      for(i = 0; i <6; i = i+1) begin
        if(saveY[i] == 1)
          flag = flag +1;
        else begin
          saveD[i] = 0;
          saveX[i] = 0;
        end
      end
      
      if(flag == 1) begin
        insert = 1;
        compY = 0;
      end
      else begin
        compY = 0;
        compW = 1;
      end
    end
    1'b0: ;
  endcase
 end
 
 
 always@(compW) begin
 
    case(compW)
      1'b1: begin
        
        saveW = 6'b111111;
      
        for(k = 0; k <6; k = k+1) begin
           for(i = 0; i <6; i = i+1) begin
            if(saveD[k] == 0) 
              saveW[k] = 0;
            else begin
              
              if(saveD[i] == 0)
                saveW[i] = 0;
              else begin
                 saveW[i] = (node[i][20:17] > node[k][20:17]) ? 0:1;
                 saveD[i] = (node[i][20:17] > node[k][20:17]) ? 0:1;
               end
           end
          end
        end
        
        flag = 0;
        for(i = 0; i <6; i = i+1) begin
          if(saveW[i] ==1)
            flag = flag +1;
          else begin
            saveD[i] = 0;
            saveX[i] = 0;
            saveY[i] = 0;
          end
        end
        
        if(flag == 1) begin
           insert = 1;
           compW = 0;
         end
         
         else;
      end
      1'b0: ;
    endcase
  end
  
  
  
  always@(insert) begin
  
    case(insert)
    1'b1: begin
    
       for(i = 0; i < 6; i = i+1) begin
       
       if(saveD[i] == 1)begin
          
          numX = numX - node[i][36:29]* node[i][20:17];
          denX = denX - node[i][20:17];
          numY = numY - node[i][28:21]* node[i][20:17];
          denY = denY - node[i][20:17];
          node[i] = tempn;
          numX = numX + node[i][36:29]* node[i][20:17];
          denX = denX + node[i][20:17];
          numY = numY + node[i][28:21]* node[i][20:17];
          denY = denY + node[i][20:17];
          
        end
        
      else;
      
        //READY = 1;
      end
      
      
      READY = 1;
      
      insert = 0;
      
    end
    1'b0: ;
    endcase
    
  end
 
endmodule   