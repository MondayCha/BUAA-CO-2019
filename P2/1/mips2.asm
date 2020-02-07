.data
str_1:		.asciiz	"move disk "
str_2:		.asciiz	" from "
str_3:		.asciiz	" to "
str_A:		.asciiz	"A"
str_B:		.asciiz	"B"
str_C:		.asciiz	"C"
str_enter:	.asciiz	"\n"
str_space:	.asciiz	" "

.macro print(%n,%x,%z)
	li	$v0,4
	la	$a0,str_1
	syscall
	li	$v0,1
	move	$a0,%n
	syscall
	li	$v0,4
	la	$a0,str_2
	syscall
	li	$v0,4
	move	$a0,%x
	syscall
	li	$v0,4
	la	$a0,str_3
	syscall
	li	$v0,4
	move	$a0,%z
	syscall
	li	$v0,11
	li	$a0,10
	syscall
.end_macro

.text
	li	$s0,1
	li	$v0,5
	syscall
	move	$a1,$v0
	
	la	$t0,str_A
	la	$t1,str_B
	la	$t2,str_C
	jal	hanoi
	
	li	$v0,10
	syscall
	
hanoi:
	beq	$a1,$s0,n1
	j	not1
n1:
	print($s0,$t0,$t2)
	jr	$ra
not1:
	sw	$a1,0($sp)
	subi	$sp,$sp,4
	sw	$t0,0($sp)
	subi	$sp,$sp,4
	sw	$t1,0($sp)
	subi	$sp,$sp,4
	sw	$t2,0($sp)
	subi	$sp,$sp,4
	sw	$ra,0($sp)
	subi	$sp,$sp,4
	
	subi	$a1,$a1,1
	move	$t3,$t1
	move	$t1,$t2
	move	$t2,$t3
	
	jal	hanoi
	
	addi	$sp,$sp,4
	lw	$ra,0($sp)
	addi	$sp,$sp,4
	lw	$t2,0($sp)
	addi	$sp,$sp,4
	lw	$t1,0($sp)
	addi	$sp,$sp,4
	lw	$t0,0($sp)
	addi	$sp,$sp,4
	lw	$a1,0($sp)
	
	print($a1,$t0,$t2)
	
	sw	$a1,0($sp)
	subi	$sp,$sp,4
	sw	$t0,0($sp)
	subi	$sp,$sp,4
	sw	$t1,0($sp)
	subi	$sp,$sp,4
	sw	$t2,0($sp)
	subi	$sp,$sp,4
	sw	$ra,0($sp)
	subi	$sp,$sp,4
	
	subi	$a1,$a1,1
	move	$t3,$t0
	move	$t0,$t1
	move	$t1,$t3
	
	jal	hanoi
	
	addi	$sp,$sp,4
	lw	$ra,0($sp)
	addi	$sp,$sp,4
	lw	$t2,0($sp)
	addi	$sp,$sp,4
	lw	$t1,0($sp)
	addi	$sp,$sp,4
	lw	$t0,0($sp)
	addi	$sp,$sp,4
	lw	$a1,0($sp)
	
	jr	$ra
	