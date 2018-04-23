 .include def/Extensa/extensa-ulp.def
 add r1, r2, r3
 add r1, r2, 2345
 stage_inc 123
 stage_dec 234
 stage_rst
 st 1234, r1, r2
 ld 2345, r2, r0
 jump 12345
 jump r1
 jump.lt 2341, 3456
 jumps.gt 6543, 2345
 halt
 wake
 sleep reg4
label:	
 wait 725
 tsens r3, 456
 adc r0, 0, 7
 i2c_rd 48, 0b010110, reg2
 i2c_wr  48, 0x36, 0b010110, reg2
 reg_rd 423, 0x55
 reg_wr 423, 0x55, 0xaa

