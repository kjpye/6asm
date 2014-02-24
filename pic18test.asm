 .include PIC18f4520.def
 .ram
fred: .long 4
bill: .long 1
 .flash
 nop
 sleep
 addwf 0x34, 3, 0
 movff 0x1234, 5678

 clrf  0x12, 0
 bcf   0x34, 3, 0
 bc    1f
1:
 bra 1b
 call bill
 call bill, 1
 retfie
 return 3
 addlw 12345
 movlb 5
 tblrd *
 tblrd *+
 tblrd *-
 tblrd +*
 tblwt *
 tblwt *+
 tblwt *-
 tblwt +*
