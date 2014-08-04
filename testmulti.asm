 .include mc68hc11.def
 .include mc6809.def
 .arch mc6809

 .ram
 .org 0x1234

fred
 lda 4,y

 .arch mc68hc11

 brset 23,x 0x20 fred
