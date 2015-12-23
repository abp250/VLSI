
// Generated by Cadence Encounter(R) RTL Compiler v12.10-s012_1

// Verification Directory fv/elevator 

module RC_CG_MOD_1(enable, ck_in, ck_out, test);
  input enable, ck_in, test;
  output ck_out;
  wire enable, ck_in, test;
  wire ck_out;
  CKLNQD1 RC_CGIC_INST(.E (enable), .CP (ck_in), .TE (test), .Q
       (ck_out));
endmodule

module RC_CG_MOD_2(enable, ck_in, ck_out, test);
  input enable, ck_in, test;
  output ck_out;
  wire enable, ck_in, test;
  wire ck_out;
  CKLNQD1 RC_CGIC_INST(.E (enable), .CP (ck_in), .TE (test), .Q
       (ck_out));
endmodule

module RC_CG_MOD(enable, ck_in, ck_out, test);
  input enable, ck_in, test;
  output ck_out;
  wire enable, ck_in, test;
  wire ck_out;
  CKLNQD1 RC_CGIC_INST(.E (enable), .CP (ck_in), .TE (test), .Q
       (ck_out));
endmodule

module elevator(ifloor, ireq, icomplete, irst, iclk, oup, odown,
     otrigger);
  input [2:0] ifloor, ireq;
  input icomplete, irst, iclk;
  output oup, odown, otrigger;
  wire [2:0] ifloor, ireq;
  wire icomplete, irst, iclk;
  wire oup, odown, otrigger;
  wire [1:0] nextstate;
  wire [2:0] req;
  wire [2:0] floor;
  wire [1:0] state;
  wire [10:0] timer;
  wire complete, dn, dn_99, n_0, n_5, n_6, n_8, n_10;
  wire n_12, n_13, n_14, n_21, n_23, n_24, n_25, n_26;
  wire n_27, n_28, n_29, n_30, n_31, n_32, n_33, n_34;
  wire n_35, n_36, n_37, n_38, n_39, n_40, n_41, n_42;
  wire n_43, n_44, n_45, n_46, n_47, n_50, n_51, n_52;
  wire n_53, n_54, n_55, n_56, n_57, n_58, n_59, n_60;
  wire n_61, n_62, n_63, n_64, n_65, n_66, n_67, n_68;
  wire n_69, n_70, n_71, n_72, n_73, n_74, n_85, n_86;
  wire n_87, n_88, n_124, n_125, n_126, n_127, n_128, n_129;
  wire n_130, power, rc_gclk, rc_gclk_1997, rc_gclk_2001, tr, tr_104,
       up;
  wire up_107;
  assign up_107 = 1'b0;
  assign tr_104 = 1'b0;
  assign dn_99 = 1'b0;
  assign nextstate[1] = 1'b0;
  assign nextstate[0] = 1'b0;
  RC_CG_MOD_1 RC_CG_HIER_INST1(.enable (n_86), .ck_in (iclk), .ck_out
       (rc_gclk_1997), .test (1'b0));
  RC_CG_MOD_2 RC_CG_HIER_INST2(.enable (n_85), .ck_in (iclk), .ck_out
       (rc_gclk_2001), .test (1'b0));
  RC_CG_MOD RC_CG_DECLONE_HIER_INST(.enable (n_87), .ck_in (iclk),
       .ck_out (rc_gclk), .test (1'b0));
  LNQD1 \nextstate_reg[0]145 (.EN (n_74), .D (n_72), .Q (nextstate[0]));
  LNQD1 \nextstate_reg[1]146 (.EN (n_74), .D (n_73), .Q (nextstate[1]));
  OA21D0 g1676(.A1 (n_70), .A2 (n_88), .B (n_73), .Z (n_74));
  AOI221D0 g1677(.A1 (n_71), .A2 (dn), .B1 (n_69), .B2 (up), .C (n_55),
       .ZN (n_73));
  AO21D0 g1678(.A1 (n_69), .A2 (n_54), .B (dn), .Z (n_72));
  CKND2D0 g1679(.A1 (n_69), .A2 (n_46), .ZN (n_71));
  IOA21D0 g1680(.A1 (n_68), .A2 (power), .B (irst), .ZN (n_86));
  IOA21D0 g1681(.A1 (n_67), .A2 (power), .B (irst), .ZN (n_85));
  CKND0 g1682(.I (n_46), .ZN (n_70));
  CKND2D0 g1684(.A1 (n_56), .A2 (n_66), .ZN (n_69));
  OAI211D0 g1685(.A1 (ifloor[2]), .A2 (n_51), .B (n_65), .C (n_58), .ZN
       (n_68));
  OAI221D0 g1686(.A1 (req[2]), .A2 (n_47), .B1 (ireq[2]), .B2 (n_52),
       .C (n_64), .ZN (n_67));
  OAI21D0 g1687(.A1 (n_59), .A2 (n_57), .B (n_62), .ZN (n_66));
  AOI221D0 g1688(.A1 (n_50), .A2 (ifloor[1]), .B1 (n_53), .B2
       (ifloor[0]), .C (n_61), .ZN (n_65));
  AOI221D0 g1689(.A1 (req[0]), .A2 (n_8), .B1 (req[1]), .B2 (n_5), .C
       (n_60), .ZN (n_64));
  OA21D0 g1690(.A1 (n_53), .A2 (req[0]), .B (n_56), .Z (n_63));
  AOI22D0 g1691(.A1 (n_50), .A2 (req[1]), .B1 (n_51), .B2 (req[2]), .ZN
       (n_62));
  OAI22D0 g1692(.A1 (n_53), .A2 (ifloor[0]), .B1 (n_50), .B2
       (ifloor[1]), .ZN (n_61));
  OAI22D0 g1693(.A1 (req[1]), .A2 (n_5), .B1 (req[0]), .B2 (n_8), .ZN
       (n_60));
  CKND2D0 g1694(.A1 (req[0]), .A2 (n_53), .ZN (n_59));
  CKND2D0 g1695(.A1 (ifloor[2]), .A2 (n_51), .ZN (n_58));
  NR2D0 g1697(.A1 (n_50), .A2 (req[1]), .ZN (n_57));
  CKND2D0 g1698(.A1 (floor[2]), .A2 (n_52), .ZN (n_56));
  CKND0 g1699(.I (n_54), .ZN (n_55));
  CKND2D0 g1700(.A1 (complete), .A2 (tr), .ZN (n_54));
  DFKCNQD1 \req_reg[1] (.CP (rc_gclk_2001), .CN (ireq[1]), .D (irst),
       .Q (req[1]));
  DFKCNQD1 \req_reg[0] (.CP (rc_gclk_2001), .CN (ireq[0]), .D (irst),
       .Q (req[0]));
  CKND0 g1703(.I (floor[0]), .ZN (n_53));
  DFKCNQD1 \floor_reg[0] (.CP (rc_gclk_1997), .CN (ifloor[0]), .D
       (irst), .Q (floor[0]));
  CKND0 g1705(.I (req[2]), .ZN (n_52));
  DFKCNQD1 \req_reg[2] (.CP (rc_gclk_2001), .CN (ireq[2]), .D (irst),
       .Q (req[2]));
  CKND0 g1707(.I (floor[2]), .ZN (n_51));
  DFKCNQD1 \floor_reg[2] (.CP (rc_gclk_1997), .CN (ifloor[2]), .D
       (irst), .Q (floor[2]));
  CKND0 g1709(.I (floor[1]), .ZN (n_50));
  DFKCNQD1 \floor_reg[1] (.CP (rc_gclk_1997), .CN (ifloor[1]), .D
       (irst), .Q (floor[1]));
  OR2D0 g1711(.A1 (state[0]), .A2 (state[1]), .Z (n_88));
  CKAN2D0 g1712(.A1 (state[0]), .A2 (state[1]), .Z (dn));
  INR2D0 g1713(.A1 (state[0]), .B1 (state[1]), .ZN (tr));
  INR2D0 g1714(.A1 (state[1]), .B1 (state[0]), .ZN (up));
  IND2D0 g1715(.A1 (power), .B1 (irst), .ZN (n_87));
  CKND0 g1717(.I (ireq[1]), .ZN (n_5));
  CKND0 g1718(.I (ireq[2]), .ZN (n_47));
  IND4D0 g2(.A1 (n_57), .B1 (n_62), .B2 (n_63), .B3 (n_59), .ZN (n_46));
  ND4D0 g1721(.A1 (n_0), .A2 (n_24), .A3 (n_23), .A4 (n_124), .ZN
       (n_45));
  DFKCNQD1 \timer_reg[9] (.CP (rc_gclk), .CN (n_21), .D (n_44), .Q
       (timer[9]));
  MOAI22D0 g1724(.A1 (n_42), .A2 (timer[9]), .B1 (n_42), .B2
       (timer[9]), .ZN (n_44));
  DFKCNQD1 \timer_reg[8] (.CP (rc_gclk), .CN (n_21), .D (n_43), .Q
       (timer[8]));
  MOAI22D0 g1727(.A1 (n_40), .A2 (timer[8]), .B1 (n_40), .B2
       (timer[8]), .ZN (n_43));
  DFKCNQD1 \timer_reg[7] (.CP (rc_gclk), .CN (n_21), .D (n_41), .Q
       (timer[7]));
  IND2D0 g1729(.A1 (n_40), .B1 (timer[8]), .ZN (n_42));
  MOAI22D0 g1730(.A1 (n_38), .A2 (timer[7]), .B1 (n_38), .B2
       (timer[7]), .ZN (n_41));
  DFKCNQD1 \timer_reg[6] (.CP (rc_gclk), .CN (n_21), .D (n_39), .Q
       (timer[6]));
  IND2D0 g1732(.A1 (n_38), .B1 (timer[7]), .ZN (n_40));
  MOAI22D0 g1733(.A1 (n_36), .A2 (timer[6]), .B1 (n_36), .B2
       (timer[6]), .ZN (n_39));
  DFKCNQD1 \timer_reg[5] (.CP (rc_gclk), .CN (n_21), .D (n_37), .Q
       (timer[5]));
  IND2D0 g1735(.A1 (n_36), .B1 (timer[6]), .ZN (n_38));
  MOAI22D0 g1736(.A1 (n_34), .A2 (timer[5]), .B1 (n_34), .B2
       (timer[5]), .ZN (n_37));
  DFKCNQD1 \timer_reg[4] (.CP (rc_gclk), .CN (n_21), .D (n_35), .Q
       (timer[4]));
  IND2D0 g1738(.A1 (n_34), .B1 (timer[5]), .ZN (n_36));
  MOAI22D0 g1739(.A1 (n_32), .A2 (timer[4]), .B1 (n_32), .B2
       (timer[4]), .ZN (n_35));
  DFKCNQD1 \timer_reg[3] (.CP (rc_gclk), .CN (n_21), .D (n_33), .Q
       (timer[3]));
  IND2D0 g1741(.A1 (n_32), .B1 (timer[4]), .ZN (n_34));
  MOAI22D0 g1742(.A1 (n_29), .A2 (timer[3]), .B1 (n_29), .B2
       (timer[3]), .ZN (n_33));
  DFKCNQD1 \timer_reg[2] (.CP (rc_gclk), .CN (n_21), .D (n_31), .Q
       (timer[2]));
  EDFKCNQD1 \state_reg[0] (.CP (rc_gclk), .CN (irst), .D
       (nextstate[0]), .E (n_30), .Q (state[0]));
  EDFKCNQD1 \state_reg[1] (.CP (rc_gclk), .CN (irst), .D
       (nextstate[1]), .E (n_30), .Q (state[1]));
  IND2D0 g1746(.A1 (n_29), .B1 (timer[3]), .ZN (n_32));
  EDFKCNQD1 odown_reg(.CP (rc_gclk), .CN (irst), .D (dn_99), .E (n_27),
       .Q (odown));
  EDFKCNQD1 complete_reg(.CP (rc_gclk), .CN (irst), .D (icomplete), .E
       (n_28), .Q (complete));
  EDFKCNQD1 otrigger_reg(.CP (rc_gclk), .CN (irst), .D (tr_104), .E
       (n_26), .Q (otrigger));
  EDFKCNQD1 oup_reg(.CP (rc_gclk), .CN (irst), .D (up_107), .E (n_25),
       .Q (oup));
  MOAI22D0 g1751(.A1 (n_14), .A2 (timer[2]), .B1 (n_14), .B2
       (timer[2]), .ZN (n_31));
  AOI21D0 g1753(.A1 (n_130), .A2 (n_128), .B (n_12), .ZN (n_30));
  IND2D0 g1754(.A1 (n_14), .B1 (timer[2]), .ZN (n_29));
  DFKCNQD1 \timer_reg[0] (.CP (rc_gclk), .CN (n_13), .D (n_21), .Q
       (timer[0]));
  NR2D0 g1756(.A1 (n_129), .A2 (n_12), .ZN (n_28));
  NR2D0 g1757(.A1 (n_126), .A2 (n_12), .ZN (n_27));
  NR2D0 g1758(.A1 (n_127), .A2 (n_12), .ZN (n_26));
  NR2D0 g1759(.A1 (n_125), .A2 (n_12), .ZN (n_25));
  AOI22D0 g1760(.A1 (floor[1]), .A2 (n_5), .B1 (floor[0]), .B2 (n_8),
       .ZN (n_24));
  OA22D0 g1761(.A1 (floor[1]), .A2 (n_5), .B1 (n_8), .B2 (floor[0]), .Z
       (n_23));
  NR3D0 g1763(.A1 (state[1]), .A2 (state[0]), .A3 (n_6), .ZN (n_21));
  CKND2D0 g1770(.A1 (timer[1]), .A2 (timer[0]), .ZN (n_14));
  CKND0 g1771(.I (timer[0]), .ZN (n_13));
  CKND0 g1776(.I (ireq[0]), .ZN (n_8));
  CKND0 g1778(.I (irst), .ZN (n_6));
  IIND4D0 g1719(.A1 (n_42), .A2 (n_88), .B1 (timer[9]), .B2 (power),
       .ZN (n_0));
  BUFFD2 g1784(.I (up), .Z (up_107));
  BUFFD2 g1785(.I (tr), .Z (tr_104));
  BUFFD2 g1786(.I (dn), .Z (dn_99));
  XNR2D0 g1803(.A1 (floor[2]), .A2 (ireq[2]), .ZN (n_124));
  XNR2D0 g1804(.A1 (oup), .A2 (up_107), .ZN (n_125));
  XNR2D0 g1805(.A1 (odown), .A2 (dn_99), .ZN (n_126));
  XNR2D0 g1806(.A1 (otrigger), .A2 (tr_104), .ZN (n_127));
  XNR2D0 g1807(.A1 (state[1]), .A2 (nextstate[1]), .ZN (n_128));
  XNR2D0 g1808(.A1 (complete), .A2 (icomplete), .ZN (n_129));
  XNR2D0 g1809(.A1 (state[0]), .A2 (nextstate[0]), .ZN (n_130));
  EDFKCND1 power_reg(.CP (iclk), .CN (irst), .D (n_0), .E (n_45), .Q
       (power), .QN (n_12));
  EDFKCND1 \timer_reg[1] (.CP (rc_gclk), .CN (n_21), .D (n_10), .E
       (timer[0]), .Q (timer[1]), .QN (n_10));
endmodule

