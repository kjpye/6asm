 .include mips32.def

 .ram

 add r13, r2, r6
 addi r23, r12, 0x1234
4
 addiu r23, r12, 0x1234
1:
 addu r13, r2, r6
label:
 and r1,r2,r3
 andi r4, r2, 0x4321
 b 4b
 bal 1b
 beq r5, r6, label
 bgez r15, 4b
 bgezal r30, fred
fred:
 bgezall r1, bill
 break
 cache 6, 1234(r3)
bill:
 clo r13, r4
 div r2, r3
 ehb
 ei
 ei r5
 ext r23, r2, 5, 12
 ins r23, r2, 5, 12
 j bill
 jal fred
 jalr r7
 jalr r30, r7
 jalr.hb r30,r7
 jalx fred
 jr r31
 jr.hb r12
 lb r1, 45(r4)
 lbu r1, 45(r4)
 lh r1, 45(r4)
 lhu r1, 45(r4)
 ll r1, 45(r4)
 lui r10, 0x4321
 lw r1, 45(r4)
 lwl r1, 45(r4)
 lwr r1, 45(r4)
 madd r3, r4
 maddu r3, r4
 mfhi r23
 mflo r24
 movn r1, r2, r3
 movz r1, r2, r3
 msub r5, r1
 msubu r5, r1
 mthi r28
 mtlo r29
 mul r4, r5, r6
 mult r5, r6
 multu r5, r6
 nop
 nor r23, r2, r3
 or r23, r2, r3
 ori r23, r2, 0x5555
 pause
 pref 0, 23(r4)
 rdhwr r23, r29
 rotr r5, r4, 3
 rotrv r5, r4, r1
 sb r6, 34(r1)
 sc r6, 34(r1)
 sdbbp 0x1234
 seb r6, r2
 seh r6, r2
 sh r6, 34(r1)
 sll r4, r5, 8
 sllv r1, r2, r3
 slt r1, r2, r3
 slti r1, r2, 3456
 sltiu r1, r2, 3456
 sltu r1, r2, r3
 sra r1, r2, 4
 srav r1, r2, r3
 srl r1, r2, 4
 srlv r1, r2, r3
 ssnop
 sub r1, r2, r3
 subu r1, r2, r3
 sw r1, 23(r2)
 swl r1, 23(r2)
 swr r1, 23(r2)
 sync
 sync_wmb
 sync_mb
 sync_acquire
 sync_release
 sync_rmb
 synci 1234(r1)
 syscall 1234
 teq r1, r2
 teqi r1, 0xaaaa
 tge r1, r2
 tgei r1, 0xaaaa
 tgeu r1, r2
 tgeiu r1, 0xaaaa
 tlt r1, r2
 tlti r1, 0xaaaa
 tltu r1, r2
 tltiu r1, 0xaaaa
 tne r1, r2
 tnei r1, 0xaaaa
 wsbh r1, r2
 xor r1, r2, r3
 xori r1, r2, 0xff00

; COP0 instructions

 deret
 di r5
 di
 ei r5
 ei
 eret
 mfc0 r1, r2
 mfc0 r1, r2, 3
 mtc0 r1, r2
 mtc0 r1, r2, 3
 rdpgpr r1, r2
 tlbp
 tlbr
 tlbwi
 tlbwr
 wait
 wait 1234
 wrpgpr r1, r2
 bc2f 3, fred
 bc2f fred
 bc2fl 4, bill
 bc2fl bill
 cfc2 r1, 0x1234
 cop2 0x12345678
 ctc2 r1, 0x1234
 ldc2 r1, 12(r4)
 lwc2 r1, 12(r4)
 mfc2 r1, 35, 2
 mfc2 r1, 35
 mfhc2 r1, 35
 mtc2 r1, 35, 7
 mthc2 r1, 34
 sdc2 r1, 34(r2)
 swc2 r1, 23(r2)
 abs.s f1, f2
 abs.d f1, f2
 abs.ps f1, f2
 add.s f1, f2, f3
 add.d f1, f2, f3
 add.ps f1, f2, f3
 alnv.ps f1, f2, f3, r4
 bc1f fred
 c.eq.s 6, f4, f7
 c.ole.d 6, f4, f7
 c.ngt.ps 6, f4, f7
 ceil.l.d f6, f23
 cfc1 r1, f2
 ldxc1 f1, r2(r3)
 lwc1 f5, 23(r4)
 madd.d f1, f2, f3, f4
 movf r1, r2, 5
 movf.s f1, f2, 5
 movn.ps f1, f2, r3
 mtc1 r5, f10
