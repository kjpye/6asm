 .include mc68hc11.def
 .ram
 .setdp 0x12

 .def sp = s

 abx

 swi2

 anda #$13
# comment
 ldy  #123456
 ldaa  <0x34
3
 ldaa 0x34
 ldy 0x1234
 lsr 0x12
 ldaa ,s
 ldab 0,u
 aba
 ldd 6,x
 ldd 6,y
 ldd 0x1234,u
 ldaa 123,x
 bra 3b
 lbra 3b
 lbhi 3b
 exg x,y
 tfr a, dp
 pshs a,d,cc,s,u
