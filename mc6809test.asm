 .include mc6809.def
 .ram
 abx

 swi2

 anda #0x13
 ldy  #123456
 lda  <0x34
 lda 0x34
 ldy 0x1234
 lsr <0x12
