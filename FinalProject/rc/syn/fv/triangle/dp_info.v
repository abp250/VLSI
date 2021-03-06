module mult_signed_GENERIC_REAL(A, B, Z);
// synthesis_equation "assign Z = $signed(A) * $signed(B);"
  input [6:0] A, B;
  output [6:0] Z;
  wire [6:0] A, B;
  wire [6:0] Z;
  wire n_22, n_23, n_24, n_25, n_26, n_27, n_29, n_30;
  wire n_31, n_32, n_33, n_34, n_36, n_39, n_40, n_41;
  wire n_45, n_46, n_47, n_48, n_49, n_50, n_51, n_52;
  wire n_53, n_54, n_55, n_56, n_57, n_58, n_59, n_60;
  wire n_61, n_67, n_69, n_70, n_71, n_75, n_76, n_77;
  wire n_78, n_79, n_80, n_81, n_82, n_83, n_84, n_85;
  wire n_86, n_88, n_90, n_91, n_92, n_94, n_95, n_96;
  wire n_100, n_101, n_102, n_103, n_104, n_105, n_107, n_109;
  wire n_110, n_118, n_119, n_120, n_121, n_122, n_123, n_124;
  wire n_125, n_126, n_127, n_128, n_129, n_130, n_131, n_132;
  wire n_133, n_134, n_135, n_136, n_137, n_138, n_139, n_140;
  wire n_141, n_142, n_143, n_147, n_156, n_159, n_161, n_164;
  wire n_166, n_167, n_169, n_171, n_172, n_174, n_176, n_177;
  wire n_179, n_182, n_195, n_196, n_199, n_200, n_202, n_203;
  wire n_204, n_205, n_207, n_208, n_209, n_210, n_211, n_212;
  xor g2 (n_39, B[1], B[0]);
  xor g8 (n_40, B[1], A[0]);
  and g12 (Z[0], A[0], B[0]);
  xor g13 (n_45, B[1], A[1]);
  nand g14 (n_46, n_45, B[0]);
  nand g15 (n_47, n_40, n_41);
  nand g16 (n_34, n_46, n_47);
  xor g17 (n_48, B[1], A[2]);
  nand g18 (n_49, n_48, B[0]);
  nand g19 (n_50, n_45, n_41);
  nand g20 (n_33, n_49, n_50);
  xor g21 (n_51, B[1], A[3]);
  nand g22 (n_52, n_51, B[0]);
  nand g23 (n_53, n_48, n_41);
  nand g24 (n_120, n_52, n_53);
  xor g25 (n_54, B[1], A[4]);
  nand g26 (n_55, n_54, B[0]);
  nand g27 (n_36, n_51, n_41);
  nand g28 (n_123, n_55, n_36);
  xor g29 (n_56, B[1], A[5]);
  nand g30 (n_57, n_56, B[0]);
  nand g31 (n_58, n_54, n_41);
  nand g32 (n_125, n_57, n_58);
  xor g33 (n_59, B[1], A[6]);
  nand g34 (n_60, n_59, B[0]);
  nand g35 (n_61, n_56, n_41);
  nand g36 (n_130, n_60, n_61);
  xor g41 (n_67, B[2], B[1]);
  xor g42 (n_69, B[3], B[2]);
  nor g46 (n_90, B[1], B[2]);
  nand g47 (n_88, B[1], B[2]);
  xor g48 (n_70, B[3], A[0]);
  and g52 (n_26, A[0], n_67);
  xor g53 (n_75, B[3], A[1]);
  nand g54 (n_76, n_75, n_67);
  nand g55 (n_77, n_70, n_71);
  nand g56 (n_25, n_76, n_77);
  xor g57 (n_78, B[3], A[2]);
  nand g58 (n_79, n_78, n_67);
  nand g59 (n_80, n_75, n_71);
  nand g60 (n_122, n_79, n_80);
  xor g61 (n_81, B[3], A[3]);
  nand g62 (n_82, n_81, n_67);
  nand g63 (n_83, n_78, n_71);
  nand g64 (n_126, n_82, n_83);
  xor g65 (n_84, B[3], A[4]);
  nand g66 (n_85, n_84, n_67);
  nand g67 (n_86, n_81, n_71);
  nand g68 (n_131, n_85, n_86);
  or g71 (n_91, n_195, n_90);
  and g72 (n_119, B[3], n_91);
  xor g73 (n_92, B[4], B[3]);
  xor g74 (n_94, B[5], B[4]);
  nor g78 (n_109, B[3], B[4]);
  nand g79 (n_107, B[3], B[4]);
  xor g80 (n_95, B[5], A[0]);
  and g84 (n_121, A[0], n_92);
  xor g85 (n_100, B[5], A[1]);
  nand g86 (n_101, n_100, n_92);
  nand g87 (n_102, n_95, n_96);
  nand g88 (n_127, n_101, n_102);
  xor g89 (n_103, B[5], A[2]);
  nand g90 (n_104, n_103, n_92);
  nand g91 (n_105, n_100, n_96);
  nand g92 (n_132, n_104, n_105);
  or g95 (n_110, n_196, n_109);
  and g96 (n_124, B[5], n_110);
  xor g101 (n_118, B[5], B[6]);
  and g108 (n_129, A[0], n_118);
  xor g115 (n_32, n_119, n_120);
  and g116 (n_24, n_119, n_120);
  xor g117 (n_135, n_121, n_122);
  xor g118 (n_31, n_135, n_123);
  nand g119 (n_136, n_121, n_122);
  nand g120 (n_137, n_123, n_122);
  nand g121 (n_138, n_121, n_123);
  nand g122 (n_23, n_136, n_137, n_138);
  xor g123 (n_128, n_124, n_125);
  and g124 (n_133, n_124, n_125);
  xor g125 (n_139, n_126, n_127);
  xor g126 (n_30, n_139, n_128);
  nand g127 (n_140, n_126, n_127);
  nand g128 (n_141, n_128, n_127);
  nand g129 (n_142, n_126, n_128);
  nand g130 (n_22, n_140, n_141, n_142);
  xor g131 (n_143, n_129, n_130);
  xor g132 (n_134, n_143, n_131);
  xor g137 (n_147, n_132, n_133);
  xor g138 (n_29, n_147, n_134);
  nor g150 (n_156, n_27, n_34);
  nand g151 (n_159, n_27, n_34);
  nor g152 (n_161, n_26, n_33);
  nand g153 (n_164, n_26, n_33);
  nor g154 (n_166, n_25, n_32);
  nand g155 (n_169, n_25, n_32);
  nor g156 (n_171, n_24, n_31);
  nand g157 (n_174, n_24, n_31);
  nor g158 (n_176, n_23, n_30);
  nand g159 (n_179, n_23, n_30);
  nand g167 (n_167, n_164, n_205);
  nand g170 (n_172, n_169, n_209);
  nand g173 (n_177, n_174, n_211);
  nand g176 (n_182, n_179, n_212);
  xnor g183 (Z[3], n_167, n_202);
  xnor g185 (Z[4], n_172, n_207);
  xnor g187 (Z[5], n_177, n_208);
  xnor g189 (Z[6], n_182, n_210);
  and g192 (n_195, wc, n_88);
  not gc (wc, A[0]);
  and g193 (n_196, wc0, n_107);
  not gc0 (wc0, A[0]);
  and g194 (n_41, wc1, n_39);
  not gc1 (wc1, B[0]);
  and g196 (n_71, n_69, wc2);
  not gc2 (wc2, n_67);
  and g197 (n_96, n_94, wc3);
  not gc3 (wc3, n_92);
  and g198 (n_27, B[1], wc4);
  not gc4 (wc4, Z[0]);
  or g199 (n_199, wc5, n_156);
  not gc5 (wc5, n_159);
  or g200 (n_200, wc6, n_161);
  not gc6 (wc6, n_164);
  not g202 (Z[1], n_199);
  or g203 (n_202, wc7, n_166);
  not gc7 (wc7, n_169);
  and g204 (n_203, n_22, n_29);
  or g205 (n_204, n_22, n_29);
  or g206 (n_205, n_159, n_161);
  xor g207 (Z[2], n_159, n_200);
  or g208 (n_207, wc8, n_171);
  not gc8 (wc8, n_174);
  or g209 (n_208, wc9, n_176);
  not gc9 (wc9, n_179);
  or g210 (n_209, wc10, n_166);
  not gc10 (wc10, n_167);
  or g211 (n_210, wc11, n_203);
  not gc11 (wc11, n_204);
  or g212 (n_211, wc12, n_171);
  not gc12 (wc12, n_172);
  or g213 (n_212, wc13, n_176);
  not gc13 (wc13, n_177);
endmodule

module mult_signed_GENERIC(A, B, Z);
  input [6:0] A, B;
  output [6:0] Z;
  wire [6:0] A, B;
  wire [6:0] Z;
  mult_signed_GENERIC_REAL g1(.A (A), .B (B), .Z (Z));
endmodule

