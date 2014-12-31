 .include riscv.def

; Test of RiscV assembler

 .ram
 .org 0

1:
 addi x4,x9,0
 mv x4, x9
 addi x0, x0, 0
 nop
 sltiu x4, x9, 1
 seqz x4, x9
 xori x5, x6, -1
 not x5, x6
 sltu x23, x0, x12
 snez x23, x12
 beq x1,x2,1b
fred
 scall
 rdcycle x8
 jal x8,fred
 j fred
 fmadd.s f4, f8, f3, f9
 fmadd.s.rne f4, f8, f3, f9
 fmadd.s.rtz f4, f8, f3, f9
 fmadd.s.rdn f4, f8, f3, f9
 fmadd.s.rup f4, f8, f3, f9
 fmadd.s.rmm f4, f8, f3, f9
 amoswap.w x0, x0, x1
 amoswap.w.aq x0, x0, x1
 amoswap.w.aq.rl x0, x0, x1
 amoswap.w.rl x0, x0, x1
 sh x2, 0(x3)
 srli x2, x2, 16
 sh x2, 2(x3)
again:
 rdcycleh x3
 rdcycle x2
 rdcycleh x4
 bne x3, x4, again
# a0 hosld address of memory location
# a1 holds expected value
# a2 holds desired value
# v0 return value, 0 if successful, !0 otherwise
cas:
 lr.w v1, (a0) # load original value
 li v0, 1 @ preset return to fail
 bne v1, a1, return # Doesn't match, so fail
 sc.w v0, a2, (a0) # Try to update
return:
 jr ra # Return.

 li v0, 1  initialise swap value
again2:
 amoswap.w.aq v0, v0, (a0) # attempt to acquire lock
 bnez v0, again2 # retry if held
# ...
# critical section
# ...
 amoswap.w.rl x0, x0, (a0) # release lock by storing 0.
 fence.po
 fence.sr.sw
