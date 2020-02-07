.data
martix_a:	.space	576
martix_b:	.space	576

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
	li	$a0,4
	move	$s0,$a0			# s0 = m1
	li	$a0,3
	move	$s1,$a0			# s0 = n1
	li	$a0,2
	move	$s2,$a0			# s2 = m2
	li	$a0,2
	move	$s3,$a0			# s3 = n2
	
	sub	$s4,$s0,$s2
	addi	$s4,$s4,1		# s4 = m1 - m2 + 1
	sub	$s5,$s1,$s3
	addi	$s5,$s5,1		# s5 = n1 - n2 + 1
	
	li	$t0,0
	li	$a0,1
i1:
	beq	$t0,$s0,i1_end
	nop
	nop
	nop
	nop
	li	$t1,0
j1:
	beq	$t1,$s1,j1_end
	nop
	nop
	nop
	nop
	
	getmartix($t4,$t0,$t1)
	sw	$a0,martix_a($t4)	# scanf("%d",&a[i][j])
	addi	$t1,$t1,1
	addi	$a0,$a0,1
	j	j1
	nop
	nop
	nop
	nop
j1_end:
	addi	$t0,$t0,1
	j	i1
	nop
	nop
	nop
	nop
i1_end:

	li	$t0,0
	li	$a0,0
i2:
	beq	$t0,$s2,i2_end
	nop
	nop
	nop
	nop
	li	$t1,0
j2:
	beq	$t1,$s3,j2_end
	nop
	nop
	nop
	nop
	
	getmartix($t4,$t0,$t1)
	sw	$v0,martix_b($t4)
	addi	$t1,$t1,1
	addi	$a0,$a0,1
	j	j2
	nop
	nop
	nop
	nop
j2_end:
	addi	$t0,$t0,1
	j	i2
	nop
	nop
	nop
	nop
i2_end:


	li	$t0,0
i3:
	beq	$t0,$s4,i3_end
	nop
	nop
	nop
	nop
	li	$t1,0
j3:
	beq	$t1,$s5,j3_end
	nop
	nop
	nop
	nop
	mult	$zero,$zero
	li	$t2,0
k:
	beq	$t2,$s2,k_end
	nop
	nop
	nop
	nop
	li	$t3,0
t:
	beq	$t3,$s3,t_end
	nop
	nop
	nop
	nop
	add	$t4,$t0,$t2
	add	$t5,$t1,$t3
	getmartix($t6,$t4,$t5)
	lw	$a0,martix_a($t6)
	getmartix($t6,$t2,$t3)
	lw	$a1,martix_b($t6)
	madd	$a0,$a1
	addi	$t3,$t3,1
	j	t
	nop
	nop
	nop
	nop
t_end:
	addi	$t2,$t2,1
	j	k
	nop
	nop
	nop
	nop
k_end:
	addi	$t1,$t1,1
	
	mfhi	$a0
	mflo	$a0
	
	
	j	j3
	nop
	nop
	nop
	nop
j3_end:
	
	addi	$t0,$t0,1
	j	i3
	nop
	nop
	nop
	nop
i3_end:
	
	

	
	
	
	
