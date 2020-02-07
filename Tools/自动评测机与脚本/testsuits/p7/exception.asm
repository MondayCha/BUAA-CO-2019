mfc0 $k1, $13
srl $k1, $k1, 2
andi $k1, $k1, 0x1f
beq $k1, $zero, changeCounter
nop

mfc0 $k0, $14
# addiu $k0, $k0, 4
mfc0 $k1, $13
srl $k1, $k1, 31
beq $k1, $zero, C1End
addiu $k0, $k0, 4
addiu $k0, $k0, 4
C1End:
andi $k0, $k0, 0x3ffc
ori $k0, $k0, 0x3000
mtc0 $k0, $14
beq $zero, $zero, return
nop

changeCounter:
mfc0 $k1, $13
srl $k1, $k1, 10
andi $k1, $k1, 0x3f
andi $k0, $k1, 0x1
bne $k0, $zero, counter1
nop
check2:
andi $k0, $k1, 0x2
bne $k0, $zero, counter2
nop
check3:
beq $zero, $zero, return
nop

counter1:
addiu $sp, $sp, -4
sw $s0, ($sp)
lw $s0, 0x7f00
andi $s0, 0x6
sw $s0, 0x7f00
sw $s0, 0x0200
lw $s0, 0x7f04
sw $s0, 0x0204
lw $s0, 0x7f08
sw $s0, 0x0208
lw $s0, ($sp)
beq $zero, $zero, check2
addiu $sp, $sp, 4

counter2:
addiu $sp, $sp, -4
sw $s0, ($sp)
lw $s0, 0x7f10
andi $s0, 0x6
sw $s0, 0x7f10
sw $s0, 0x0210
lw $s0, 0x7f14
sw $s0, 0x0214
lw $s0, 0x7f18
sw $s0, 0x0218
lw $s0, ($sp)
beq $zero, $zero, check3
addiu $sp, $sp, 4

return:
eret
ori $k1, $zero, 391
