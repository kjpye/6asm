 .include riscv.def

; Test of RiscV assembler

 .ram
 .org 0

1:
 add x4,x9,x23
 beq x1,x2,1b
fred
 scall
 rdcycle x8
 jal x8,fred
 fmadd.s f4, f8, f3, f9
