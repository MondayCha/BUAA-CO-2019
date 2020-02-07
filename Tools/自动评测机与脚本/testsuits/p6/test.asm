.data
.space 32

.text
j main
nop

binary_multu:
	addi $sp, $sp, -12
	sw $s0, 0($sp)
	sw $s1, 4($sp)
	sw $s2, 8($sp)
	add $s0, $zero, $a0		# u
	addu $s1, $zero, $a1	# v
	addiu $v0, $zero, 0		# ans
for_bm_b:
	beq $s1, $zero, for_bm_end	# while(v)
	andi $s2, $s1, 1		# tmp = v & 1 (db)
if_bm_b:
	# andi $s2, $s1, 1		# tmp = v & 1
	beq $s2, $zero, if_bm_e	# if(tmp)
	nop
	addu $v0, $v0, $s0		# ans += u
if_bm_e:
	# sll $s0, $s0, 1			# u <<= 1
	srl $s1, $s1, 1			# v >>= 1
	j for_bm_b
	sll $s0, $s0, 1			# u <<= 1 (db)
for_bm_end:
	lw $s0, 0($sp)
	lw $s1, 4($sp)
	lw $s2, 8($sp)
	# addiu $sp, $sp, 12
	jr $ra
	addiu $sp, $sp, 12		# (db)


multu_judge:
	addi $sp, $sp, -4
	sw $s0, 0($sp)
	multu $a0, $a1
	mflo $s0
	subu $s0, $s0, $a2
if_mj_b:
	bne $s0, $zero, if_mj_else
	nop
	# xori $k0, $zero, 1
	j if_mj_e
	xori $k0, $zero, 1 # (db)
if_mj_else:
	xori $k0, $zero, 2
if_mj_e:
	lw $s0, 0($sp)
	jr $ra
	# addiu $sp, $sp, 4
	addiu $sp, $sp, 4		# (db)


condi:
	addi $sp, $sp, -4
	sw $s0, 0($sp)
	bltz $a0, if_cd_1
	nop
	lui $k1, 0x418a
if_cd_1:
	bgtz $a0, if_cd_2
	nop
	xori $k1, $k1, 0x938a
if_cd_2:
	blez $a0, if_cd_3
	nop
	srav $k1, $a0, $k1
if_cd_3:
	bgez $a0, if_cd_4
	nop
	srlv $k1, $k1, $a0
if_cd_4:
	sllv $k1, $k1, $k1
	lw $s0, 0($sp)
	jr $a3
	# addiu $sp, $sp, 4
	addiu $sp, $sp, 4		# (db)


gene_rand:
	addi $sp, $sp, -4
	sw $s0, 0($sp)
	li $s0, 0x7fffffff
	and $a0, $s0, $a0
	lui $s0, 0x8000
	or $a1, $s0, $a0
	nor $s0, $a0, $a1
	li $t0, 20
	sw $a0, 0
	sw $a1, 4
	sw $a0, 8
	sw $a1, 12
	sw $a0, 16
	sw $a1, 20
	sw $a0, 24
	sw $a1, 28
gr_l:
	blez $t0, gr_end
	xor $a0, $a0, $a1
	xor $a1, $a0, $a1
	slt $t1, $a0, $a1
	sltu $t2, $a0, $a1
	xor $t1, $t1, $t2
	sra $a0, $a0, 1
	slti $t1, $a0, -1
	sltiu $t2, $a1, -1
	subu $a0, $a0, $a1
	sll $t1, $t1, 31
	sll $t2, $t2, 31
	xor $a0, $a0, $t1
	xor $a1, $a1, $t2
	andi $t5, $a0, 3
	ori $t5, $t5, 4
	andi $t6, $a1, 2
	ori $t6, $t6, 4
	andi $t7, $a0, 12
	addi $t7, $t7, 4
	andi $t8, $a1, 12
	blez $a0, gr_t
		lw $a1, -4($t7)
		lw $a0, 4($t8)
		lb $t1, 1($t5)
		lbu $t2, -1($t5)
		lh $t3, 2($t6)
		lhu $t4, -2($t6)
		xor $a0, $a0, $t1
		xor $a0, $a0, $t3
		xor $a1, $a1, $t2
		xor $a1, $a1, $t4
	j gr_mdu
	nop
gr_t:
		la $s0, condi
		jalr $a3, $s0
		nop
		sw $a1, -4($t7)
		sw $a0, 4($t8)
		sb $a0, 1($t5)
		sb $a1, -1($t5)
		sh $a1, 2($t6)
		sh $a0, -2($t6)
gr_mdu:
	mult $a0, $a1
	mfhi $t1
	mflo $t2
	xor $a0, $a0, $t1
	xor $a1, $a1, $t2
	mthi $a0
	mfhi $t1
	mtlo $a1
	mflo $t2
	ori $t2, $t2, 1	# div 0
	div $t1, $t2
	mfhi $t1
	mflo $t2
	xor $t1, $t1, $t2
	xor $a1, $a1, $t1
	ori $a0, $a0, 1	# div 0
	divu $t1, $a0
	mfhi $t1
	mflo $t2
	xor $a0, $a0, $t1
	add $a0, $a0, $t2
	j gr_l
	addi $t0, $t0, -1
gr_end:
	lw $s0, 0($sp)
	jr $ra
	# addiu $sp, $sp, 4
	addiu $sp, $sp, 4		# (db)
	

main:
li $s0, 190193
li $s1, 748923
li $s2, 487329
li $a0, 2004334058
li $a1, -687203719
mult $a0, $a1
mfhi $a0
mflo $a0
jal binary_multu
nop
move $a2, $v0
jal multu_judge
nop
la $t0, condi
jalr $a3, $t0
nop

jal gene_rand
sub $zero, $zero, $a0

li $a0, 0
li $a1, 0
li $a2, 0
li $a3, 0
la $t0, condi
jalr $a3, $t0
nop

exit:
beq $zero, $zero, exit
nop