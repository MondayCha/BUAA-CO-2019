.data

map:		.word	1:256
temp:		.word	1:256

.macro	getmartix(%ans,%i,%j)
	sll	%ans,%i,4
	add	%ans,%ans,%j
	sll	%ans,%ans,2
.end_macro

.macro readint(%d)
	subi	$sp,$sp,4
	sw	$v0,0($sp)
	li	$v0,5
	syscall
	move	%d,$v0
	lw	$v0,0($sp)
	addi	$sp,$sp,4
.end_macro

.macro printint(%d)
	subi	$sp,$sp,4
	sw	$a0,0($sp)
	subi	$sp,$sp,4
	sw	$v0,0($sp)
	li	$v0,1
	move	$a0,%d
	syscall
	lw	$v0,0($sp)
	addi	$sp,$sp,4
	lw	$a0,0($sp)
	addi	$sp,$sp,4
.end_macro

.macro dx(%a,%x,%i)
	li	$t9,0
	bne	%i,$t9,i11
	add	%a,%x,$zero
	j	dxend
i11:
	li	$t9,1
	bne	%i,$t9,i21
	addi	%a,%x,1
	j	dxend
i21:
	li	$t9,2
	bne	%i,$t9,i31
	add	%a,%x,$zero
	j	dxend
i31:
	addi	%a,%x,-1
dxend:
.end_macro

.macro dy(%b,%y,%i)
	li	$t9,0
	bne	%i,$t9,i12
	addi	%b,%y,1
	j	dyend
	
i12:
	li	$t9,1
	bne	%i,$t9,i22
	add	%b,%y,$zero
	j	dyend	
i22:
	li	$t9,2
	bne	%i,$t9,i32
	addi	%b,%y,-1
	j	dyend
i32:
	add	%b,%y,$zero
dyend:
.end_macro

.text
	li	$s7,1
	li	$s6,0		# s6 = sum
	
	readint($s0)		# s0 = n
	readint($s1)		# s1 = m
	
	li	$t0,0
i1:
	beq	$t0,$s0,i1_end
	li	$t1,0
j1:
	beq	$t1,$s1,j1_end
	readint($t2)
	addi	$t3,$t0,1
	addi	$t4,$t1,1
	getmartix($t5,$t3,$t4)
	sw	$t2,map($t5)
	
	addi	$t1,$t1,1
	j	j1
j1_end:
	addi	$t0,$t0,1
	j	i1
i1_end:
	readint($a0)		# a0 = x
	readint($a1)		# a1 = y
	readint($s2)
	readint($s3)
	
	jal	dfs
	
	printint($s6)
	
	li	$v0,10
	syscall
	
dfs:
	bne	$a0,$s2,notf
	bne	$a1,$s3,notf
	
	addi	$s6,$s6,1
	jr	$ra
notf:
	li	$t0,0
	li	$s5,4
i2:
	beq	$t0,$s5,i2_end
	
	dx($t2,$a0,$t0)
	dy($t3,$a1,$t0)
	getmartix($t4,$t2,$t3)
	lw	$t5,temp($t4)
	lw	$t6,map($t4)
	
	beq	$t5,$zero,dend
	bne	$t6,$zero,dend
	
	getmartix($t4,$a0,$a1)
	sw	$zero,temp($t4)
	
	sw	$ra,0($sp)
	subi	$sp,$sp,4
	sw	$a0,0($sp)
	subi	$sp,$sp,4
	sw	$a1,0($sp)
	subi	$sp,$sp,4
	sw	$t0,0($sp)
	subi	$sp,$sp,4
	
	move	$a0,$t2
	move	$a1,$t3
	jal	dfs
	
	addi	$sp,$sp,4
	lw	$t0,0($sp)
	addi	$sp,$sp,4
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	lw	$a0,0($sp)
	addi	$sp,$sp,4
	lw	$ra,0($sp)
	
	getmartix($t4,$a0,$a1)
	sw	$s7,temp($t4)
	
dend:	
	addi	$t0,$t0,1
	j	i2
i2_end:
	jr	$ra
	
	
	
	
	
	
