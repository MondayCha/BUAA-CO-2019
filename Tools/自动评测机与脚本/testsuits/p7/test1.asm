.text

main:

li $t0, 0x7fffffff
addi $t0, $t0, 3
ori $t1, $zero, 1
nop

sw $t1, 1($zero)
ori $t1, $zero, 2
sh $t1, 1($zero)
ori $t1, $zero, 3
sb $t1, 1($zero)
ori $t1, $zero, 4
lb $s0, 1($zero)
ori $t1, $zero, 5
lh $s0, 1($zero)
ori $t1, $zero, 6
lw $s0, 1($zero)
ori $t1, $zero, 7
nop

la $s1, test2
addi $s1, $s1, 3
test2:
jr $s1
nop
ori $t1, $zero, 8

la $s1, test1
addi $s1, $s1, 3
test1:
jr $s1
addi $t0, $t0, 3
ori $t1, $zero, 9

li $t0, 0x80000000
li $t2, 1
sub $t1, $t0, $t2
ori $t1, $zero, 10
nop

li $t0, 0x80000000
li $t2, 1
j main
sub $t1, $t0, $t2
ori $t1, $zero, 11
nop

j main
lh $s0, 1($zero)
ori $t1, $zero, 12
nop

ori $sp, $zero, 0x1ffc

mfc0 $t3, $12
ori $t3, $t3, 0xfc00
mtc0 $t3, $12

ori $t0, $zero, 97
sw $t0, 0x7f04
ori $t0, $zero, 7
sw $t0, 0x7f14
ori $t0, $zero, 0x9
sw $t0, 0x7f00
ori $t0, $zero, 0xb
sw $t0, 0x7f10

mfc0 $t3, $12
ori $t3, $t3, 0xfc01
mtc0 $t3, $12

li $s0, 16
mfc0 $s1, $15
forB:
# multu $s1, $s0
# mfhi $t0
# mflo $t1
li $t0, 0x391a967
xor $s1, $s0, $s1
xor $s1, $s1, $t0
bgtz $s0, forB
addi $s0, $s0, -1

exit:
beq $zero, $zero, exit
nop
