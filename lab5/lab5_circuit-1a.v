///////////////////////////
// ECE6930 2014 Spring  //
// LAB. 5 circuit-1a   //
// Verilog format     //
///////////////////////

// library used /opt/software/cadence/library/tcbn45nm/verilog/HVT/tcbn45gsbwphvt.v


module circuit_1a ( N1, N2, PO1, PO2 );
  input N1, N2;
  output PO1, PO2;
  wire   ff1, ff2, ff3, ff4, n2, n3, n4;

  BUFFD1BWPHVT buf4_reg ( .I(ff1), .Z(ff4) );
  BUFFD1BWPHVT buf2_reg ( .I(n4), .Z(ff2) );
  BUFFD1BWPHVT buf3_reg ( .I(n3), .Z(ff3) );
  BUFFD1BWPHVT buf1_reg ( .I(N2), .Z(ff1) );
  ND2D1BWPHVT U8 ( .A1(ff2), .A2(ff1), .ZN(n3) );
  OR2XD1BWPHVT U9 ( .A1(ff1), .A2(N1), .Z(n4) );
  OR2XD1BWPHVT U10 ( .A1(ff4), .A2(n3), .Z(PO2) );
  INVD1BWPHVT U11 ( .I(N1), .ZN(n2) );
  OR3XD1BWPHVT U12 ( .A1(n2), .A2(ff3), .A3(n3), .Z(PO1) );
endmodule
