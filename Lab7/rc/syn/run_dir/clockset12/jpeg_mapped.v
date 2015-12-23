
// Generated by Cadence Encounter(R) RTL Compiler v12.10-s012_1

// Verification Directory fv/ALT_MULTADD_pipe 

module csa_tree_add_27_19_group_57(in_0, in_1, in_2, out_0);
  input [7:0] in_0, in_1;
  input [8:0] in_2;
  output [16:0] out_0;
  wire [7:0] in_0, in_1;
  wire [8:0] in_2;
  wire [16:0] out_0;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_28, n_29, n_30, n_31;
  wire n_32, n_33, n_34, n_35, n_36, n_37, n_38, n_39;
  wire n_40, n_41, n_42, n_43, n_44, n_45, n_46, n_47;
  wire n_48, n_49, n_50, n_51, n_52, n_53, n_54, n_55;
  wire n_56, n_57, n_58, n_59, n_60, n_61, n_62, n_63;
  wire n_64, n_65, n_66, n_67, n_68, n_69, n_70, n_72;
  wire n_73, n_74, n_75, n_76, n_77, n_78, n_79, n_80;
  wire n_81, n_82, n_83, n_84, n_85, n_86, n_87, n_88;
  wire n_89, n_90, n_91, n_92, n_93, n_94, n_96, n_98;
  wire n_100, n_102, n_104, n_106, n_108, n_112, n_116, n_120;
  wire n_124, n_125, n_126, n_127, n_128, n_129, n_130, n_131;
  wire n_132, n_139, n_140, n_141, n_142, n_143, n_144, n_145;
  wire n_146, n_147, n_148, n_149, n_173, n_174, n_175, n_177;
  wire n_178, n_179, n_180, n_182, n_183, n_184, n_185, n_186;
  wire n_187, n_188, n_189, n_190, n_191, n_192, n_193, n_194;
  wire n_195, n_196, n_197, n_198, n_199, n_200, n_201, n_202;
  wire n_203, n_204, n_205, n_206, n_207, n_208, n_209, n_210;
  wire n_211, n_212, n_213, n_214, n_215, n_217, n_218, n_220;
  wire n_221, n_223;
  CMPE42D1 cdnca_003_0(.A (n_23), .B (n_38), .C (n_78), .CIX (n_67), .D
       (in_2[3]), .CO (n_149), .COX (n_124), .S (n_127));
  CMPE42D1 cdnca_004_0(.A (n_22), .B (n_14), .C (n_34), .CIX (n_77), .D
       (n_66), .CO (n_212), .COX (n_213), .S (n_125));
  CMPE42D1 cdnca_005_0(.A (n_56), .B (n_2), .C (n_11), .CIX (n_43), .D
       (n_76), .CO (n_209), .COX (n_210), .S (n_214));
  CMPE42D1 cdnca_005_1(.A (n_91), .B (in_2[5]), .C (n_214), .CIX
       (n_213), .D (n_212), .CO (n_148), .COX (n_207), .S (n_129));
  CMPE42D1 cdnca_006_0(.A (n_15), .B (n_25), .C (n_53), .CIX (n_10), .D
       (n_20), .CO (n_204), .COX (n_205), .S (n_211));
  CMPE42D1 cdnca_006_1(.A (n_83), .B (n_90), .C (n_211), .CIX
       (in_2[6]), .D (n_210), .CO (n_201), .COX (n_202), .S (n_208));
  CMPE42D1 cdnca_007_0(.A (n_54), .B (n_42), .C (n_13), .CIX (n_3), .D
       (n_19), .CO (n_198), .COX (n_199), .S (n_206));
  CMPE42D1 cdnca_007_1(.A (n_18), .B (n_69), .C (n_82), .CIX (n_206),
       .D (n_205), .CO (n_195), .COX (n_196), .S (n_203));
  CMPE42D1 cdnca_007_2(.A (n_204), .B (in_2[7]), .C (n_203), .CIX
       (n_202), .D (n_201), .CO (n_145), .COX (n_194), .S (n_131));
  CMPE42D1 cdnca_008_0(.A (n_55), .B (n_17), .C (n_31), .CIX (n_1), .D
       (n_48), .CO (n_191), .COX (n_193), .S (n_200));
  CMPE42D1 cdnca_008_1(.A (n_65), .B (n_68), .C (n_200), .CIX (n_199),
       .D (in_2[8]), .CO (n_189), .COX (n_190), .S (n_197));
  CMPE42D1 cdnca_008_2(.A (n_198), .B (n_197), .C (n_196), .CIX
       (n_195), .D (n_194), .CO (n_141), .COX (n_187), .S (n_132));
  CMPE42D1 cdnca_009_0(.A (n_27), .B (n_39), .C (n_41), .CIX (n_29), .D
       (n_81), .CO (n_184), .COX (n_185), .S (n_192));
  CMPE42D1 cdnca_009_1(.A (n_64), .B (n_193), .C (n_192), .CIX (n_191),
       .D (n_190), .CO (n_182), .COX (n_183), .S (n_188));
  CMPE42D1 cdnca_010_0(.A (n_12), .B (n_40), .C (n_6), .CIX (n_89), .D
       (n_80), .CO (n_179), .COX (n_180), .S (n_186));
  CMPE42D1 cdnca_010_1(.A (n_186), .B (n_185), .C (n_184), .CIX
       (n_183), .D (n_182), .CO (n_140), .COX (n_177), .S (n_139));
  CMPE42D1 cdnca_011_0(.A (n_51), .B (n_30), .C (n_88), .CIX (n_75), .D
       (n_180), .CO (n_174), .COX (n_175), .S (n_178));
  CMPE42D1 cdnca_012_0(.A (n_59), .B (n_74), .C (n_85), .CIX (n_175),
       .D (n_174), .CO (n_144), .COX (n_173), .S (n_143));
  FA1D0 cdnfadd_002_0(.A (n_9), .B (n_79), .CI (n_72), .CO (n_142), .S
       (n_126));
  FA1D0 cdnfadd_004_1(.A (in_2[4]), .B (n_125), .CI (n_124), .CO
       (n_146), .S (n_128));
  FA1D0 cdnfadd_006_2(.A (n_209), .B (n_208), .CI (n_207), .CO (n_147),
       .S (n_130));
  HA1D0 g1422(.A (n_92), .B (n_120), .CO (out_0[16]), .S (out_0[15]));
  FA1D0 g1423(.A (n_217), .B (n_93), .CI (n_215), .CO (n_120), .S
       (out_0[14]));
  FA1D0 g1425(.A (n_220), .B (n_143), .CI (n_218), .CO (n_116), .S
       (out_0[12]));
  FA1D0 g1427(.A (n_223), .B (n_139), .CI (n_221), .CO (n_112), .S
       (out_0[10]));
  FA1D0 g1429(.A (n_106), .B (n_145), .CI (n_132), .CO (n_108), .S
       (out_0[8]));
  FA1D0 g1430(.A (n_131), .B (n_147), .CI (n_104), .CO (n_106), .S
       (out_0[7]));
  FA1D0 g1431(.A (n_102), .B (n_148), .CI (n_130), .CO (n_104), .S
       (out_0[6]));
  FA1D0 g1432(.A (n_100), .B (n_146), .CI (n_129), .CO (n_102), .S
       (out_0[5]));
  FA1D0 g1433(.A (n_98), .B (n_149), .CI (n_128), .CO (n_100), .S
       (out_0[4]));
  FA1D0 g1434(.A (n_96), .B (n_142), .CI (n_127), .CO (n_98), .S
       (out_0[3]));
  FA1D0 g1435(.A (n_94), .B (in_2[2]), .CI (n_126), .CO (n_96), .S
       (out_0[2]));
  FA1D0 g1436(.A (n_73), .B (n_70), .CI (in_2[1]), .CO (n_94), .S
       (out_0[1]));
  HA1D0 g1437(.A (n_28), .B (n_86), .CO (n_92), .S (n_93));
  HA1D0 g1438(.A (n_37), .B (n_45), .CO (n_90), .S (n_91));
  HA1D0 g1439(.A (n_7), .B (n_63), .CO (n_88), .S (n_89));
  HA1D0 g1440(.A (n_21), .B (n_0), .CO (n_86), .S (n_87));
  HA1D0 g1441(.A (n_58), .B (n_8), .CO (n_84), .S (n_85));
  HA1D0 g1442(.A (n_60), .B (n_36), .CO (n_82), .S (n_83));
  HA1D0 g1443(.A (n_46), .B (n_50), .CO (n_80), .S (n_81));
  HA1D0 g1444(.A (n_4), .B (n_52), .CO (n_78), .S (n_79));
  HA1D0 g1445(.A (n_35), .B (n_61), .CO (n_76), .S (n_77));
  HA1D0 g1446(.A (n_26), .B (n_24), .CO (n_74), .S (n_75));
  HA1D0 g1447(.A (n_47), .B (n_57), .CO (n_72), .S (n_73));
  HA1D0 g1448(.A (n_49), .B (in_2[0]), .CO (n_70), .S (out_0[0]));
  HA1D0 g1449(.A (n_44), .B (n_5), .CO (n_68), .S (n_69));
  HA1D0 g1450(.A (n_16), .B (n_32), .CO (n_66), .S (n_67));
  HA1D0 g1451(.A (n_62), .B (n_33), .CO (n_64), .S (n_65));
  CKAN2D0 g1452(.A1 (in_1[4]), .A2 (in_0[6]), .Z (n_63));
  CKAN2D0 g1453(.A1 (in_1[1]), .A2 (in_0[7]), .Z (n_62));
  CKAN2D0 g1454(.A1 (in_1[2]), .A2 (in_0[2]), .Z (n_61));
  CKAN2D0 g1455(.A1 (in_1[0]), .A2 (in_0[6]), .Z (n_60));
  CKAN2D0 g1456(.A1 (in_1[7]), .A2 (in_0[5]), .Z (n_59));
  CKAN2D0 g1457(.A1 (in_1[5]), .A2 (in_0[7]), .Z (n_58));
  CKAN2D0 g1458(.A1 (in_1[1]), .A2 (in_0[0]), .Z (n_57));
  CKAN2D0 g1459(.A1 (in_1[3]), .A2 (in_0[2]), .Z (n_56));
  CKAN2D0 g1460(.A1 (in_1[7]), .A2 (in_0[1]), .Z (n_55));
  CKAN2D0 g1461(.A1 (in_1[6]), .A2 (in_0[1]), .Z (n_54));
  CKAN2D0 g1462(.A1 (in_1[1]), .A2 (in_0[5]), .Z (n_53));
  CKAN2D0 g1463(.A1 (in_1[2]), .A2 (in_0[0]), .Z (n_52));
  CKAN2D0 g1464(.A1 (in_1[7]), .A2 (in_0[4]), .Z (n_51));
  CKAN2D0 g1465(.A1 (in_1[3]), .A2 (in_0[6]), .Z (n_50));
  CKAN2D0 g1466(.A1 (in_1[0]), .A2 (in_0[0]), .Z (n_49));
  CKAN2D0 g1467(.A1 (in_1[6]), .A2 (in_0[2]), .Z (n_48));
  CKAN2D0 g1468(.A1 (in_1[0]), .A2 (in_0[1]), .Z (n_47));
  CKAN2D0 g1469(.A1 (in_1[2]), .A2 (in_0[7]), .Z (n_46));
  CKAN2D0 g1470(.A1 (in_1[2]), .A2 (in_0[3]), .Z (n_45));
  CKAN2D0 g1471(.A1 (in_1[0]), .A2 (in_0[7]), .Z (n_44));
  CKAN2D0 g1472(.A1 (in_1[5]), .A2 (in_0[0]), .Z (n_43));
  CKAN2D0 g1473(.A1 (in_1[7]), .A2 (in_0[0]), .Z (n_42));
  CKAN2D0 g1474(.A1 (in_1[4]), .A2 (in_0[5]), .Z (n_41));
  CKAN2D0 g1475(.A1 (in_1[7]), .A2 (in_0[3]), .Z (n_40));
  CKAN2D0 g1476(.A1 (in_1[6]), .A2 (in_0[3]), .Z (n_39));
  CKAN2D0 g1477(.A1 (in_1[1]), .A2 (in_0[2]), .Z (n_38));
  CKAN2D0 g1478(.A1 (in_1[0]), .A2 (in_0[5]), .Z (n_37));
  CKAN2D0 g1479(.A1 (in_1[2]), .A2 (in_0[4]), .Z (n_36));
  CKAN2D0 g1480(.A1 (in_1[0]), .A2 (in_0[4]), .Z (n_35));
  CKAN2D0 g1481(.A1 (in_1[4]), .A2 (in_0[0]), .Z (n_34));
  CKAN2D0 g1482(.A1 (in_1[3]), .A2 (in_0[5]), .Z (n_33));
  CKAN2D0 g1483(.A1 (in_1[2]), .A2 (in_0[1]), .Z (n_32));
  CKAN2D0 g1484(.A1 (in_1[2]), .A2 (in_0[6]), .Z (n_31));
  CKAN2D0 g1485(.A1 (in_1[6]), .A2 (in_0[5]), .Z (n_30));
  CKAN2D0 g1486(.A1 (in_1[7]), .A2 (in_0[2]), .Z (n_29));
  CKAN2D0 g1487(.A1 (in_1[7]), .A2 (in_0[7]), .Z (n_28));
  CKAN2D0 g1488(.A1 (in_1[5]), .A2 (in_0[4]), .Z (n_27));
  CKAN2D0 g1489(.A1 (in_1[4]), .A2 (in_0[7]), .Z (n_26));
  CKAN2D0 g1490(.A1 (in_1[3]), .A2 (in_0[3]), .Z (n_25));
  CKAN2D0 g1491(.A1 (in_1[5]), .A2 (in_0[6]), .Z (n_24));
  CKAN2D0 g1492(.A1 (in_1[3]), .A2 (in_0[0]), .Z (n_23));
  CKAN2D0 g1493(.A1 (in_1[3]), .A2 (in_0[1]), .Z (n_22));
  CKAN2D0 g1494(.A1 (in_1[6]), .A2 (in_0[7]), .Z (n_21));
  CKAN2D0 g1495(.A1 (in_1[5]), .A2 (in_0[1]), .Z (n_20));
  CKAN2D0 g1496(.A1 (in_1[4]), .A2 (in_0[3]), .Z (n_19));
  CKAN2D0 g1497(.A1 (in_1[5]), .A2 (in_0[2]), .Z (n_18));
  CKAN2D0 g1498(.A1 (in_1[4]), .A2 (in_0[4]), .Z (n_17));
  CKAN2D0 g1499(.A1 (in_1[0]), .A2 (in_0[3]), .Z (n_16));
  CKAN2D0 g1500(.A1 (in_1[6]), .A2 (in_0[0]), .Z (n_15));
  CKAN2D0 g1501(.A1 (in_1[1]), .A2 (in_0[3]), .Z (n_14));
  CKAN2D0 g1502(.A1 (in_1[3]), .A2 (in_0[4]), .Z (n_13));
  CKAN2D0 g1503(.A1 (in_1[6]), .A2 (in_0[4]), .Z (n_12));
  CKAN2D0 g1504(.A1 (in_1[4]), .A2 (in_0[1]), .Z (n_11));
  CKAN2D0 g1505(.A1 (in_1[4]), .A2 (in_0[2]), .Z (n_10));
  CKAN2D0 g1506(.A1 (in_1[1]), .A2 (in_0[1]), .Z (n_9));
  CKAN2D0 g1507(.A1 (in_1[6]), .A2 (in_0[6]), .Z (n_8));
  CKAN2D0 g1508(.A1 (in_1[3]), .A2 (in_0[7]), .Z (n_7));
  CKAN2D0 g1509(.A1 (in_1[5]), .A2 (in_0[5]), .Z (n_6));
  CKAN2D0 g1510(.A1 (in_1[2]), .A2 (in_0[5]), .Z (n_5));
  CKAN2D0 g1511(.A1 (in_1[0]), .A2 (in_0[2]), .Z (n_4));
  CKAN2D0 g1512(.A1 (in_1[1]), .A2 (in_0[6]), .Z (n_3));
  CKAN2D0 g1513(.A1 (in_1[1]), .A2 (in_0[4]), .Z (n_2));
  CKAN2D0 g1514(.A1 (in_1[5]), .A2 (in_0[3]), .Z (n_1));
  CKAN2D0 g1515(.A1 (in_1[7]), .A2 (in_0[6]), .Z (n_0));
  CMPE42D1 g2(.A (n_84), .B (n_87), .C (n_173), .CIX (n_116), .D
       (n_144), .CO (n_215), .COX (n_217), .S (out_0[13]));
  CMPE42D1 g1516(.A (n_179), .B (n_178), .C (n_177), .CIX (n_112), .D
       (n_140), .CO (n_218), .COX (n_220), .S (out_0[11]));
  CMPE42D1 g1517(.A (n_189), .B (n_188), .C (n_187), .CIX (n_108), .D
       (n_141), .CO (n_221), .COX (n_223), .S (out_0[9]));
endmodule

module mult_unsigned_85(A, B, Z);
  input [7:0] A, B;
  output [7:0] Z;
  wire [7:0] A, B;
  wire [7:0] Z;
  wire n_0, n_2, n_3, n_4, n_5, n_6, n_7, n_8;
  wire n_9, n_10, n_11, n_12, n_13, n_14, n_15, n_16;
  wire n_17, n_18, n_19, n_20, n_21, n_22, n_23, n_24;
  wire n_25, n_26, n_27, n_28, n_29, n_30, n_31, n_32;
  wire n_33, n_34, n_35, n_36, n_37, n_38, n_39, n_40;
  wire n_41, n_42, n_43, n_44, n_45, n_46, n_48, n_49;
  wire n_50, n_51, n_52, n_53, n_54, n_55, n_56, n_57;
  wire n_58, n_59, n_60, n_61, n_62, n_63, n_66, n_68;
  wire n_70, n_71, n_72, n_76, n_85, n_115, n_116, n_117;
  wire n_119, n_121, n_122, n_123, n_125, n_126, n_127, n_129;
  wire n_130, n_131;
  MOAI22D0 g1335(.A1 (n_76), .A2 (n_68), .B1 (n_76), .B2 (n_68), .ZN
       (n_85));
  MAOI222D0 g1342(.A (n_50), .B (n_42), .C (n_63), .ZN (n_76));
  FA1D0 g1345(.A (n_41), .B (n_21), .CI (n_44), .CO (n_72), .S (n_71));
  MAOI22D0 g1346(.A1 (n_61), .A2 (n_55), .B1 (n_61), .B2 (n_55), .ZN
       (n_70));
  MAOI22D0 g1348(.A1 (n_57), .A2 (n_48), .B1 (n_57), .B2 (n_48), .ZN
       (n_68));
  MOAI22D0 g1349(.A1 (n_60), .A2 (n_39), .B1 (n_60), .B2 (n_39), .ZN
       (Z[2]));
  AOI21D0 g1350(.A1 (n_53), .A2 (n_39), .B (n_54), .ZN (n_66));
  FA1D0 g1352(.A (n_24), .B (n_19), .CI (n_34), .CO (n_63), .S (n_62));
  MAOI22D0 g1353(.A1 (n_51), .A2 (n_52), .B1 (n_51), .B2 (n_52), .ZN
       (n_61));
  IND2D0 g1354(.A1 (n_54), .B1 (n_53), .ZN (n_60));
  FA1D0 g1355(.A (n_32), .B (n_27), .CI (n_30), .CO (n_58), .S (n_59));
  XNR3D0 g1356(.A1 (n_3), .A2 (n_10), .A3 (n_36), .ZN (n_57));
  XNR3D0 g1357(.A1 (n_22), .A2 (n_33), .A3 (n_38), .ZN (n_56));
  MAOI222D0 g1358(.A (n_49), .B (n_22), .C (n_33), .ZN (n_55));
  NR2D0 g1359(.A1 (n_45), .A2 (n_7), .ZN (n_54));
  CKND2D0 g1360(.A1 (n_7), .A2 (n_45), .ZN (n_53));
  XNR3D0 g1361(.A1 (n_15), .A2 (n_26), .A3 (n_2), .ZN (n_52));
  XOR3D0 g1362(.A1 (n_25), .A2 (n_31), .A3 (n_16), .Z (n_51));
  XOR3D0 g1363(.A1 (n_5), .A2 (n_18), .A3 (n_17), .Z (n_50));
  CKND0 g1364(.I (n_38), .ZN (n_49));
  MAOI222D0 g1365(.A (n_5), .B (n_17), .C (n_18), .ZN (n_48));
  NR2D0 g1366(.A1 (n_39), .A2 (n_35), .ZN (Z[1]));
  XNR2D0 g1367(.A1 (n_13), .A2 (n_9), .ZN (n_46));
  XNR2D0 g1368(.A1 (n_23), .A2 (n_20), .ZN (n_45));
  XNR2D0 g1369(.A1 (n_8), .A2 (n_29), .ZN (n_44));
  XNR2D0 g1370(.A1 (n_4), .A2 (n_6), .ZN (n_43));
  XNR2D0 g1371(.A1 (n_28), .A2 (n_11), .ZN (n_42));
  OR2D0 g1372(.A1 (n_6), .A2 (n_4), .Z (n_41));
  OR2D0 g1373(.A1 (n_20), .A2 (n_23), .Z (n_40));
  NR2D0 g1374(.A1 (n_7), .A2 (n_0), .ZN (n_39));
  NR2D0 g1375(.A1 (n_29), .A2 (n_8), .ZN (n_38));
  OR2D0 g1376(.A1 (n_13), .A2 (n_9), .Z (n_37));
  NR2D0 g1377(.A1 (n_11), .A2 (n_28), .ZN (n_36));
  AOI22D0 g1378(.A1 (B[0]), .A2 (A[1]), .B1 (B[1]), .B2 (A[0]), .ZN
       (n_35));
  CKND2D0 g1379(.A1 (A[3]), .A2 (B[2]), .ZN (n_34));
  CKND2D0 g1380(.A1 (A[1]), .A2 (B[5]), .ZN (n_33));
  CKND2D0 g1381(.A1 (A[0]), .A2 (B[4]), .ZN (n_32));
  CKND2D0 g1382(.A1 (B[3]), .A2 (A[4]), .ZN (n_31));
  CKND2D0 g1383(.A1 (A[1]), .A2 (B[3]), .ZN (n_30));
  CKND2D0 g1384(.A1 (B[0]), .A2 (A[5]), .ZN (n_29));
  CKND2D0 g1385(.A1 (B[1]), .A2 (A[5]), .ZN (n_28));
  CKND2D0 g1386(.A1 (A[2]), .A2 (B[2]), .ZN (n_27));
  CKND2D0 g1387(.A1 (A[2]), .A2 (B[5]), .ZN (n_26));
  CKND2D0 g1388(.A1 (A[3]), .A2 (B[4]), .ZN (n_25));
  CKND2D0 g1389(.A1 (A[2]), .A2 (B[3]), .ZN (n_24));
  CKND2D0 g1390(.A1 (A[0]), .A2 (B[2]), .ZN (n_23));
  CKND2D0 g1391(.A1 (B[6]), .A2 (A[0]), .ZN (n_22));
  CKND2D0 g1392(.A1 (A[0]), .A2 (B[5]), .ZN (n_21));
  CKND2D0 g1393(.A1 (A[2]), .A2 (B[0]), .ZN (n_20));
  CKND2D0 g1394(.A1 (A[1]), .A2 (B[4]), .ZN (n_19));
  CKND2D0 g1395(.A1 (A[2]), .A2 (B[4]), .ZN (n_18));
  CKND2D0 g1396(.A1 (B[2]), .A2 (A[4]), .ZN (n_17));
  CKND2D0 g1397(.A1 (B[7]), .A2 (A[0]), .ZN (n_16));
  CKND2D0 g1398(.A1 (B[6]), .A2 (A[1]), .ZN (n_15));
  CKND2D0 g1399(.A1 (A[0]), .A2 (B[3]), .ZN (n_14));
  CKND2D0 g1400(.A1 (A[2]), .A2 (B[1]), .ZN (n_13));
  CKND2D0 g1401(.A1 (A[1]), .A2 (B[2]), .ZN (n_12));
  CKND2D0 g1402(.A1 (A[6]), .A2 (B[0]), .ZN (n_11));
  CKND2D0 g1403(.A1 (A[6]), .A2 (B[1]), .ZN (n_10));
  CKND2D0 g1404(.A1 (A[3]), .A2 (B[0]), .ZN (n_9));
  CKND2D0 g1405(.A1 (B[1]), .A2 (A[4]), .ZN (n_8));
  CKND2D0 g1406(.A1 (A[1]), .A2 (B[1]), .ZN (n_7));
  CKND2D0 g1407(.A1 (A[3]), .A2 (B[1]), .ZN (n_6));
  CKND2D0 g1408(.A1 (A[3]), .A2 (B[3]), .ZN (n_5));
  CKND2D0 g1409(.A1 (B[0]), .A2 (A[4]), .ZN (n_4));
  CKND2D0 g1410(.A1 (A[7]), .A2 (B[0]), .ZN (n_3));
  CKND2D0 g1411(.A1 (B[2]), .A2 (A[5]), .ZN (n_2));
  CKND0 g1412(.I (n_0), .ZN (Z[0]));
  CKND2D0 g1413(.A1 (A[0]), .A2 (B[0]), .ZN (n_0));
  XOR3D1 g1414(.A1 (n_42), .A2 (n_63), .A3 (n_50), .Z (n_115));
  CMPE42D1 g1415(.A (n_115), .B (n_56), .C (n_72), .CIX (n_122), .D
       (n_121), .CO (n_116), .COX (n_119), .S (n_117));
  CKND0 g3(.I (n_117), .ZN (Z[6]));
  CMPE42D1 g2(.A (n_62), .B (n_58), .C (n_71), .CIX (n_126), .D
       (n_125), .CO (n_121), .COX (n_122), .S (n_123));
  CKND0 g1416(.I (n_123), .ZN (Z[5]));
  CMPE42D1 g1417(.A (n_43), .B (n_37), .C (n_59), .CIX (n_130), .D
       (n_129), .CO (n_125), .COX (n_126), .S (n_127));
  CKND0 g1418(.I (n_127), .ZN (Z[4]));
  CMPE42D1 g1419(.A (n_14), .B (n_12), .C (n_46), .CIX (n_40), .D
       (n_66), .CO (n_129), .COX (n_130), .S (n_131));
  CKND0 g1420(.I (n_131), .ZN (Z[3]));
  XNR4D0 g1421(.A1 (n_116), .A2 (n_85), .A3 (n_70), .A4 (n_119), .ZN
       (Z[7]));
endmodule

module mult_unsigned_85_54(A, B, Z);
  input [7:0] A, B;
  output [7:0] Z;
  wire [7:0] A, B;
  wire [7:0] Z;
  wire n_0, n_2, n_3, n_4, n_5, n_6, n_7, n_8;
  wire n_9, n_10, n_11, n_12, n_13, n_14, n_15, n_16;
  wire n_17, n_18, n_19, n_20, n_21, n_22, n_23, n_24;
  wire n_25, n_26, n_27, n_28, n_29, n_30, n_31, n_32;
  wire n_33, n_34, n_35, n_36, n_37, n_38, n_39, n_40;
  wire n_41, n_42, n_43, n_44, n_45, n_46, n_48, n_49;
  wire n_50, n_51, n_52, n_53, n_54, n_55, n_56, n_57;
  wire n_58, n_59, n_60, n_61, n_62, n_63, n_66, n_68;
  wire n_70, n_71, n_72, n_76, n_85, n_115, n_116, n_117;
  wire n_119, n_121, n_122, n_123, n_125, n_126, n_127, n_129;
  wire n_130, n_131;
  MOAI22D0 g1335(.A1 (n_76), .A2 (n_68), .B1 (n_76), .B2 (n_68), .ZN
       (n_85));
  MAOI222D0 g1342(.A (n_50), .B (n_42), .C (n_63), .ZN (n_76));
  FA1D0 g1345(.A (n_41), .B (n_21), .CI (n_44), .CO (n_72), .S (n_71));
  MAOI22D0 g1346(.A1 (n_61), .A2 (n_55), .B1 (n_61), .B2 (n_55), .ZN
       (n_70));
  MAOI22D0 g1348(.A1 (n_57), .A2 (n_48), .B1 (n_57), .B2 (n_48), .ZN
       (n_68));
  MOAI22D0 g1349(.A1 (n_60), .A2 (n_39), .B1 (n_60), .B2 (n_39), .ZN
       (Z[2]));
  AOI21D0 g1350(.A1 (n_53), .A2 (n_39), .B (n_54), .ZN (n_66));
  FA1D0 g1352(.A (n_24), .B (n_19), .CI (n_34), .CO (n_63), .S (n_62));
  MAOI22D0 g1353(.A1 (n_51), .A2 (n_52), .B1 (n_51), .B2 (n_52), .ZN
       (n_61));
  IND2D0 g1354(.A1 (n_54), .B1 (n_53), .ZN (n_60));
  FA1D0 g1355(.A (n_32), .B (n_27), .CI (n_30), .CO (n_58), .S (n_59));
  XNR3D0 g1356(.A1 (n_3), .A2 (n_10), .A3 (n_36), .ZN (n_57));
  XNR3D0 g1357(.A1 (n_22), .A2 (n_33), .A3 (n_38), .ZN (n_56));
  MAOI222D0 g1358(.A (n_49), .B (n_22), .C (n_33), .ZN (n_55));
  NR2D0 g1359(.A1 (n_45), .A2 (n_7), .ZN (n_54));
  CKND2D0 g1360(.A1 (n_7), .A2 (n_45), .ZN (n_53));
  XNR3D0 g1361(.A1 (n_15), .A2 (n_26), .A3 (n_2), .ZN (n_52));
  XOR3D0 g1362(.A1 (n_25), .A2 (n_31), .A3 (n_16), .Z (n_51));
  XOR3D0 g1363(.A1 (n_5), .A2 (n_18), .A3 (n_17), .Z (n_50));
  CKND0 g1364(.I (n_38), .ZN (n_49));
  MAOI222D0 g1365(.A (n_5), .B (n_17), .C (n_18), .ZN (n_48));
  NR2D0 g1366(.A1 (n_39), .A2 (n_35), .ZN (Z[1]));
  XNR2D0 g1367(.A1 (n_13), .A2 (n_9), .ZN (n_46));
  XNR2D0 g1368(.A1 (n_23), .A2 (n_20), .ZN (n_45));
  XNR2D0 g1369(.A1 (n_8), .A2 (n_29), .ZN (n_44));
  XNR2D0 g1370(.A1 (n_4), .A2 (n_6), .ZN (n_43));
  XNR2D0 g1371(.A1 (n_28), .A2 (n_11), .ZN (n_42));
  OR2D0 g1372(.A1 (n_6), .A2 (n_4), .Z (n_41));
  OR2D0 g1373(.A1 (n_20), .A2 (n_23), .Z (n_40));
  NR2D0 g1374(.A1 (n_7), .A2 (n_0), .ZN (n_39));
  NR2D0 g1375(.A1 (n_29), .A2 (n_8), .ZN (n_38));
  OR2D0 g1376(.A1 (n_13), .A2 (n_9), .Z (n_37));
  NR2D0 g1377(.A1 (n_11), .A2 (n_28), .ZN (n_36));
  AOI22D0 g1378(.A1 (B[0]), .A2 (A[1]), .B1 (B[1]), .B2 (A[0]), .ZN
       (n_35));
  CKND2D0 g1379(.A1 (A[3]), .A2 (B[2]), .ZN (n_34));
  CKND2D0 g1380(.A1 (A[1]), .A2 (B[5]), .ZN (n_33));
  CKND2D0 g1381(.A1 (A[0]), .A2 (B[4]), .ZN (n_32));
  CKND2D0 g1382(.A1 (B[3]), .A2 (A[4]), .ZN (n_31));
  CKND2D0 g1383(.A1 (A[1]), .A2 (B[3]), .ZN (n_30));
  CKND2D0 g1384(.A1 (B[0]), .A2 (A[5]), .ZN (n_29));
  CKND2D0 g1385(.A1 (B[1]), .A2 (A[5]), .ZN (n_28));
  CKND2D0 g1386(.A1 (A[2]), .A2 (B[2]), .ZN (n_27));
  CKND2D0 g1387(.A1 (A[2]), .A2 (B[5]), .ZN (n_26));
  CKND2D0 g1388(.A1 (A[3]), .A2 (B[4]), .ZN (n_25));
  CKND2D0 g1389(.A1 (A[2]), .A2 (B[3]), .ZN (n_24));
  CKND2D0 g1390(.A1 (A[0]), .A2 (B[2]), .ZN (n_23));
  CKND2D0 g1391(.A1 (B[6]), .A2 (A[0]), .ZN (n_22));
  CKND2D0 g1392(.A1 (A[0]), .A2 (B[5]), .ZN (n_21));
  CKND2D0 g1393(.A1 (A[2]), .A2 (B[0]), .ZN (n_20));
  CKND2D0 g1394(.A1 (A[1]), .A2 (B[4]), .ZN (n_19));
  CKND2D0 g1395(.A1 (A[2]), .A2 (B[4]), .ZN (n_18));
  CKND2D0 g1396(.A1 (B[2]), .A2 (A[4]), .ZN (n_17));
  CKND2D0 g1397(.A1 (B[7]), .A2 (A[0]), .ZN (n_16));
  CKND2D0 g1398(.A1 (B[6]), .A2 (A[1]), .ZN (n_15));
  CKND2D0 g1399(.A1 (A[0]), .A2 (B[3]), .ZN (n_14));
  CKND2D0 g1400(.A1 (A[2]), .A2 (B[1]), .ZN (n_13));
  CKND2D0 g1401(.A1 (A[1]), .A2 (B[2]), .ZN (n_12));
  CKND2D0 g1402(.A1 (A[6]), .A2 (B[0]), .ZN (n_11));
  CKND2D0 g1403(.A1 (A[6]), .A2 (B[1]), .ZN (n_10));
  CKND2D0 g1404(.A1 (A[3]), .A2 (B[0]), .ZN (n_9));
  CKND2D0 g1405(.A1 (B[1]), .A2 (A[4]), .ZN (n_8));
  CKND2D0 g1406(.A1 (A[1]), .A2 (B[1]), .ZN (n_7));
  CKND2D0 g1407(.A1 (A[3]), .A2 (B[1]), .ZN (n_6));
  CKND2D0 g1408(.A1 (A[3]), .A2 (B[3]), .ZN (n_5));
  CKND2D0 g1409(.A1 (B[0]), .A2 (A[4]), .ZN (n_4));
  CKND2D0 g1410(.A1 (A[7]), .A2 (B[0]), .ZN (n_3));
  CKND2D0 g1411(.A1 (B[2]), .A2 (A[5]), .ZN (n_2));
  CKND0 g1412(.I (n_0), .ZN (Z[0]));
  CKND2D0 g1413(.A1 (A[0]), .A2 (B[0]), .ZN (n_0));
  XOR3D1 g1414(.A1 (n_42), .A2 (n_63), .A3 (n_50), .Z (n_115));
  CMPE42D1 g1415(.A (n_115), .B (n_56), .C (n_72), .CIX (n_122), .D
       (n_121), .CO (n_116), .COX (n_119), .S (n_117));
  CKND0 g3(.I (n_117), .ZN (Z[6]));
  CMPE42D1 g2(.A (n_62), .B (n_58), .C (n_71), .CIX (n_126), .D
       (n_125), .CO (n_121), .COX (n_122), .S (n_123));
  CKND0 g1416(.I (n_123), .ZN (Z[5]));
  CMPE42D1 g1417(.A (n_43), .B (n_37), .C (n_59), .CIX (n_130), .D
       (n_129), .CO (n_125), .COX (n_126), .S (n_127));
  CKND0 g1418(.I (n_127), .ZN (Z[4]));
  CMPE42D1 g1419(.A (n_14), .B (n_12), .C (n_46), .CIX (n_40), .D
       (n_66), .CO (n_129), .COX (n_130), .S (n_131));
  CKND0 g1420(.I (n_131), .ZN (Z[3]));
  XNR4D0 g1421(.A1 (n_116), .A2 (n_85), .A3 (n_70), .A4 (n_119), .ZN
       (Z[7]));
endmodule

module ALT_MULTADD_pipe(iCLK, iRST_N, iSEL, iA0, iA1, iB0, iB1, oR);
  input iCLK, iRST_N, iSEL;
  input [7:0] iA0, iA1, iB0, iB1;
  output [16:0] oR;
  wire iCLK, iRST_N, iSEL;
  wire [7:0] iA0, iA1, iB0, iB1;
  wire [16:0] oR;
  wire [7:0] M0;
  wire [7:0] M1;
  wire [7:0] A0;
  wire [7:0] B0;
  wire [7:0] A1;
  wire [7:0] B1;
  wire SEL, SEL1, n_0, n_1, n_2, n_3, n_4, n_5;
  wire n_6, n_7, n_8, n_9, n_10, n_11, n_12, n_13;
  wire n_14, n_15, n_16, n_17, n_18, n_19, n_38, n_47;
  wire n_48, n_49, n_50, n_51, n_53, n_54, n_55, n_56;
  wire n_57, n_58, n_59, n_60, n_61, n_62, n_64, n_65;
  wire n_71, n_73, n_74, n_75, n_76, n_77, n_89, n_96;
  wire n_97, n_98, n_99, n_100, n_101, n_102, n_103, n_104;
  wire n_105, n_106, n_107, n_108, n_109, n_110;
  csa_tree_add_27_19_group_57 csa_tree_add_27_19_groupi(.in_0 (M0),
       .in_1 (M1), .in_2 ({n_75, n_76, n_77, n_89, n_110, n_38, n_71,
       n_73, n_74}), .out_0 ({n_65, n_64, n_62, n_61, n_60, n_59, n_58,
       n_57, n_56, n_55, n_54, n_53, n_51, n_50, n_49, n_48, n_47}));
  mult_unsigned_85 mul_17_10(.A (A0), .B (B0), .Z ({n_104, n_105,
       n_106, n_107, n_108, n_109, n_18, n_19}));
  mult_unsigned_85_54 mul_18_10(.A (A1), .B (B1), .Z ({n_96, n_97,
       n_98, n_99, n_100, n_101, n_102, n_103}));
  DFQD1 \A0_reg[7] (.CP (iCLK), .D (iA0[7]), .Q (A0[7]));
  DFQD1 \A0_reg[6] (.CP (iCLK), .D (iA0[6]), .Q (A0[6]));
  DFQD1 \A0_reg[4] (.CP (iCLK), .D (iA0[4]), .Q (A0[4]));
  DFQD1 \A0_reg[0] (.CP (iCLK), .D (iA0[0]), .Q (A0[0]));
  DFQD1 \A1_reg[0] (.CP (iCLK), .D (iA1[0]), .Q (A1[0]));
  DFQD1 \B1_reg[0] (.CP (iCLK), .D (iB1[0]), .Q (B1[0]));
  DFQD1 \B0_reg[7] (.CP (iCLK), .D (iB0[7]), .Q (B0[7]));
  DFQD1 \A1_reg[7] (.CP (iCLK), .D (iA1[7]), .Q (A1[7]));
  DFQD1 \B0_reg[6] (.CP (iCLK), .D (iB0[6]), .Q (B0[6]));
  DFQD1 \B0_reg[5] (.CP (iCLK), .D (iB0[5]), .Q (B0[5]));
  DFQD1 \A0_reg[3] (.CP (iCLK), .D (iA0[3]), .Q (A0[3]));
  DFQD1 \A1_reg[6] (.CP (iCLK), .D (iA1[6]), .Q (A1[6]));
  DFQD1 \B0_reg[4] (.CP (iCLK), .D (iB0[4]), .Q (B0[4]));
  DFQD1 \B0_reg[3] (.CP (iCLK), .D (iB0[3]), .Q (B0[3]));
  DFQD1 \A1_reg[5] (.CP (iCLK), .D (iA1[5]), .Q (A1[5]));
  DFQD1 \B0_reg[2] (.CP (iCLK), .D (iB0[2]), .Q (B0[2]));
  DFQD1 \B0_reg[1] (.CP (iCLK), .D (iB0[1]), .Q (B0[1]));
  DFQD1 \A0_reg[5] (.CP (iCLK), .D (iA0[5]), .Q (A0[5]));
  DFQD1 \A0_reg[2] (.CP (iCLK), .D (iA0[2]), .Q (A0[2]));
  DFQD1 \A1_reg[4] (.CP (iCLK), .D (iA1[4]), .Q (A1[4]));
  DFQD1 \B0_reg[0] (.CP (iCLK), .D (iB0[0]), .Q (B0[0]));
  DFQD1 \B1_reg[7] (.CP (iCLK), .D (iB1[7]), .Q (B1[7]));
  DFQD1 \A1_reg[3] (.CP (iCLK), .D (iA1[3]), .Q (A1[3]));
  DFQD1 \B1_reg[6] (.CP (iCLK), .D (iB1[6]), .Q (B1[6]));
  DFQD1 \B1_reg[5] (.CP (iCLK), .D (iB1[5]), .Q (B1[5]));
  DFQD1 \A0_reg[1] (.CP (iCLK), .D (iA0[1]), .Q (A0[1]));
  DFQD1 \A1_reg[2] (.CP (iCLK), .D (iA1[2]), .Q (A1[2]));
  DFQD1 \B1_reg[4] (.CP (iCLK), .D (iB1[4]), .Q (B1[4]));
  DFQD1 \B1_reg[3] (.CP (iCLK), .D (iB1[3]), .Q (B1[3]));
  DFQD1 \A1_reg[1] (.CP (iCLK), .D (iA1[1]), .Q (A1[1]));
  DFQD1 \B1_reg[2] (.CP (iCLK), .D (iB1[2]), .Q (B1[2]));
  DFQD1 \B1_reg[1] (.CP (iCLK), .D (iB1[1]), .Q (B1[1]));
  FA1D0 g467(.A (M0[7]), .B (M1[7]), .CI (n_17), .CO (n_75), .S (n_76));
  FA1D0 g468(.A (M0[6]), .B (M1[6]), .CI (n_16), .CO (n_17), .S (n_77));
  FA1D0 g469(.A (M0[5]), .B (M1[5]), .CI (n_15), .CO (n_16), .S (n_89));
  FA1D0 g470(.A (M0[4]), .B (M1[4]), .CI (n_14), .CO (n_15), .S
       (n_110));
  FA1D0 g471(.A (M0[3]), .B (M1[3]), .CI (n_13), .CO (n_14), .S (n_38));
  FA1D0 g472(.A (M0[2]), .B (M1[2]), .CI (n_12), .CO (n_13), .S (n_71));
  FA1D0 g473(.A (M0[1]), .B (M1[1]), .CI (n_11), .CO (n_12), .S (n_73));
  HA1D0 g474(.A (M0[0]), .B (M1[0]), .CO (n_11), .S (n_74));
  DFQD1 \M0_reg[3] (.CP (iCLK), .D (n_108), .Q (M0[3]));
  DFQD1 \M1_reg[0] (.CP (iCLK), .D (n_103), .Q (M1[0]));
  DFQD1 \M0_reg[0] (.CP (iCLK), .D (n_19), .Q (M0[0]));
  DFQD1 \M0_reg[4] (.CP (iCLK), .D (n_107), .Q (M0[4]));
  DFQD1 \M0_reg[7] (.CP (iCLK), .D (n_104), .Q (M0[7]));
  DFQD1 \M1_reg[5] (.CP (iCLK), .D (n_98), .Q (M1[5]));
  DFQD1 \M1_reg[6] (.CP (iCLK), .D (n_97), .Q (M1[6]));
  DFQD1 \M0_reg[6] (.CP (iCLK), .D (n_105), .Q (M0[6]));
  DFQD1 \M1_reg[1] (.CP (iCLK), .D (n_102), .Q (M1[1]));
  DFQD1 \M1_reg[7] (.CP (iCLK), .D (n_96), .Q (M1[7]));
  DFQD1 \M1_reg[4] (.CP (iCLK), .D (n_99), .Q (M1[4]));
  DFQD1 \M0_reg[5] (.CP (iCLK), .D (n_106), .Q (M0[5]));
  DFQD1 \M0_reg[2] (.CP (iCLK), .D (n_109), .Q (M0[2]));
  DFQD1 \M1_reg[3] (.CP (iCLK), .D (n_100), .Q (M1[3]));
  DFQD1 \M1_reg[2] (.CP (iCLK), .D (n_101), .Q (M1[2]));
  DFQD1 \M0_reg[1] (.CP (iCLK), .D (n_18), .Q (M0[1]));
  DFQD1 \oR_reg[8] (.CP (iCLK), .D (n_4), .Q (oR[8]));
  DFQD1 \oR_reg[7] (.CP (iCLK), .D (n_5), .Q (oR[7]));
  DFQD1 \oR_reg[1] (.CP (iCLK), .D (n_2), .Q (oR[1]));
  DFQD1 \oR_reg[0] (.CP (iCLK), .D (n_3), .Q (oR[0]));
  DFQD1 \oR_reg[6] (.CP (iCLK), .D (n_6), .Q (oR[6]));
  DFQD1 \oR_reg[5] (.CP (iCLK), .D (n_7), .Q (oR[5]));
  DFQD1 \oR_reg[4] (.CP (iCLK), .D (n_8), .Q (oR[4]));
  DFQD1 \oR_reg[3] (.CP (iCLK), .D (n_9), .Q (oR[3]));
  DFQD1 \oR_reg[2] (.CP (iCLK), .D (n_10), .Q (oR[2]));
  DFKCNQD1 \oR_reg[9] (.CP (iCLK), .CN (n_57), .D (n_1), .Q (oR[9]));
  DFKCNQD1 \oR_reg[15] (.CP (iCLK), .CN (n_64), .D (n_1), .Q (oR[15]));
  DFKCNQD1 \oR_reg[13] (.CP (iCLK), .CN (n_61), .D (n_1), .Q (oR[13]));
  DFKCNQD1 \oR_reg[12] (.CP (iCLK), .CN (n_60), .D (n_1), .Q (oR[12]));
  DFKCNQD1 \oR_reg[16] (.CP (iCLK), .CN (n_65), .D (n_1), .Q (oR[16]));
  DFKCNQD1 \oR_reg[11] (.CP (iCLK), .CN (n_59), .D (n_1), .Q (oR[11]));
  DFKCNQD1 \oR_reg[14] (.CP (iCLK), .CN (n_62), .D (n_1), .Q (oR[14]));
  DFKCNQD1 \oR_reg[10] (.CP (iCLK), .CN (n_58), .D (n_1), .Q (oR[10]));
  AO22D0 g428(.A1 (n_49), .A2 (n_1), .B1 (n_0), .B2 (n_71), .Z (n_10));
  AO22D0 g429(.A1 (n_50), .A2 (n_1), .B1 (n_0), .B2 (n_38), .Z (n_9));
  AO22D0 g430(.A1 (n_51), .A2 (n_1), .B1 (n_0), .B2 (n_110), .Z (n_8));
  AO22D0 g431(.A1 (n_53), .A2 (n_1), .B1 (n_0), .B2 (n_89), .Z (n_7));
  AO22D0 g432(.A1 (n_54), .A2 (n_1), .B1 (n_0), .B2 (n_77), .Z (n_6));
  AO22D0 g433(.A1 (n_55), .A2 (n_1), .B1 (n_0), .B2 (n_76), .Z (n_5));
  AO22D0 g434(.A1 (n_56), .A2 (n_1), .B1 (n_0), .B2 (n_75), .Z (n_4));
  AO22D0 g435(.A1 (n_47), .A2 (n_1), .B1 (n_0), .B2 (n_74), .Z (n_3));
  AO22D0 g436(.A1 (n_48), .A2 (n_1), .B1 (n_0), .B2 (n_73), .Z (n_2));
  INR2D0 g437(.A1 (iRST_N), .B1 (SEL), .ZN (n_1));
  CKAN2D0 g438(.A1 (SEL), .A2 (iRST_N), .Z (n_0));
  DFQD1 SEL_reg(.CP (iCLK), .D (SEL1), .Q (SEL));
  DFQD1 SEL1_reg(.CP (iCLK), .D (iSEL), .Q (SEL1));
endmodule

