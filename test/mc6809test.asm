 .include def/motorola/mc6809.def
 .ram
 .setdp 0x12

 .def sp = s

 abx

 swi2

 anda #0x13
 ldy  #123456
 lda  <0x34
3
 lda 0x34
 ldy 0x1234
 lsr <0x12
 lda ,s
 ldb 0,u
 ldd 6,y
 ldd 0x1234,u
 lda 123,x
 lda [0x1234]
 lda [23,y]
 lda 123,pcr
 bra 3b
 lbra 3b
 lbhi 3b
 exg x,y
 tfr a, dp
 pshs a,d,cc,s,u
