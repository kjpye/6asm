 .include PIC10F200.def
 .ram
fred: .long 4
bill: .long 1
 .flash
 nop
 sleep
 addwf 4,1 
 clrw
 clrf 0x34
 bcf 0x12, 5
 andlw 0x55
 call 0x123
 goto 0x123
 tris 4
