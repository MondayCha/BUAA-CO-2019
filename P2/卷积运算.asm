.data
martix_a:	.space	576
martix_b:	.space	576
martix_c:	.space	576

str_enter:	.asciiz	"\n"
str_space:	.asciiz	" "

.macro	getmartix(%ans,%i,%j)
	sll	$t8,%i,3
	sll	$t9,%i,2
	add	%ans,$t8,$t9
	add	%ans,%ans,%j
	sll	%ans,%ans,2
.end_macro

.text
	li	$v0,5
	syscall
	move	$s0,$v0			# s0 = m1
	li	$v0,5
	syscall
	move	$s1,$v0			# s0 = n1
	li	$v0,5
	syscall
	move	$s2,$v0			# s2 = m2
	li	$v0,5
	syscall
	move	$s3,$v0			# s3 = n2
	
	sub	$s4,$s0,$s2
	addi	$s4,$s4,1		# s4 = m1 - m2 + 1
	sub	$s5,$s1,$s3
	addi	$s5,$s5,1		# s5 = n1 - n2 + 1
	
	li	$t0,0
i1:
	beq	$t0,$s0,i1_end
	li	$t1,0
j1:
	beq	$t1,$s1,j1_end
	
	getmartix($t4,$t0,$t1)
	li	$v0,5
	syscall
	sw	$v0,martix_a($t4)	# scanf("%d",&a[i][j])
	addi	$t1,$t1,1
	j	j1
j1_end:
	addi	$t0,$t0,1
	j	i1
i1_end:

	li	$t0,0
i2:
	beq	$t0,$s2,i2_end
	li	$t1,0
j2:
	beq	$t1,$s3,j2_end
	
	getmartix($t4,$t0,$t1)
	li	$v0,5
	syscall
	sw	$v0,martix_b($t4)
	addi	$t1,$t1,1
	j	j2
j2_end:
	addi	$t0,$t0,1
	j	i2
i2_end:


	li	$t0,0
i3:
	beq	$t0,$s4,i3_end
	li	$t1,0
j3:
	beq	$t1,$s5,j3_end
	li	$s6,0
	li	$t2,0
k:
	beq	$t2,$s2,k_end
	li	$t3,0
t:
	beq	$t3,$s3,t_end
	add	$t4,$t0,$t2
	add	$t5,$t1,$t3
	getmartix($t6,$t4,$t5)
	lw	$a0,martix_a($t6)
	getmartix($t6,$t2,$t3)
	lw	$a1,martix_b($t6)
	mul	$s7,$a0,$a1
	add	$s6,$s6,$s7
	getmartix($t6,$t0,$t1)
	sw	$s6,martix_c($t6)
	addi	$t3,$t3,1
	j	t
t_end:
	addi	$t2,$t2,1
	j	k
k_end:
	addi	$t1,$t1,1
	j	j3
j3_end:
	addi	$t0,$t0,1
	j	i3
i3_end:

	li	$t0,0
i4:
	beq	$t0,$s4,i4_end
	li	$t1,0
j4:
	beq	$t1,$s5,j4_end
	getmartix($t2,$t0,$t1)
	lw	$s6,martix_c($t2)
	
	li	$v0,1
	move	$a0,$s6
	syscall
	
	li	$v0,4
	la	$a0,str_space
	syscall
	
	addi	$t1,$t1,1
	j	j4
j4_end:
	li	$v0,4
	la	$a0,str_enter
	syscall
	
	addi	$t0,$t0,1
	j	i4
i4_end:
	li	$v0,10
	syscall
	

	
	
	
	