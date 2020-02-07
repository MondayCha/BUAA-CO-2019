.data
symbol:		.space	28
array:		.space	28

str_space:	.asciiz	" "
str_enter:	.asciiz	"\n"

.macro	getarray(%ans,%i)
	move	%ans,%i
	sll	%ans,%ans,2
.end_macro

.text
	li	$v0,5
	syscall
	move	$s0,$v0		# s0 = n
	
	li	$a1,0		# a1 = index
	jal	fullarray
	
	li	$v0,10
	syscall
	
fullarray:
	beq	$a1,$s0,if_index
	j	else_index
	
if_index:
	li	$t0,0		# i = 0
	
i1:
	beq	$t0,$s0,i1_end
	getarray($t1,$t0)
	
	lw	$a0,array($t1)
	li	$v0,1
	syscall
	
	la	$a0,str_space
	li	$v0,4
	syscall
	
	addi	$t0,$t0,1
	j	i1
	
i1_end:
	la	$a0,str_enter
	li	$v0,4
	syscall
	
	jr	$31
	
else_index:
	li	$t0,0
	
i2:
	beq	$t0,$s0,i2_end
	
	getarray($t1,$t0)
	lw	$t2,symbol($t1)
	
	bne	$t2,$zero,not_equal
	
	addi	$t3,$t0,1
	getarray($t1,$a1)
	sw	$t3,array($t1)
	li	$t3,1
	getarray($t1,$t0)
	sw	$t3,symbol($t1)
	
	sw	$ra,0($sp)
	subi	$sp,$sp,4
	sw	$a1,0($sp)
	subi	$sp,$sp,4
	sw	$t0,0($sp)
	subi	$sp,$sp,4
	
	addi	$a1,$a1,1
	jal	fullarray
	
	addi	$sp,$sp,4
	lw	$t0,0($sp)
	addi	$sp,$sp,4
	lw	$a1,0($sp)
	addi	$sp,$sp,4
	lw	$ra,0($sp)
	
	getarray($t1,$t0)
	sw	$zero,symbol($t1)
	
not_equal:
	addi	$t0,$t0,1
	j	i2
	
i2_end:
	jr	$31
	
	

	
	
	
	
