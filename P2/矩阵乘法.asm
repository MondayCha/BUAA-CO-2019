.data
martix_a:	.space	256		
martix_b:	.space	256
martix_c:	.space	256		# int a[8][8],b[8][8],c[8][8]

str_enter:	.asciiz "\n"
str_space:	.asciiz " "

.macro	getmartix(%ans,%i,%j)
	sll	%ans,%i,3
	add	%ans,%ans,%j
	sll	%ans,%ans,2
.end_macro

.text
	li	$v0,5
	syscall
	move	$s0,$v0			# scanf("%d",&n)
	
	# scanf("%d",&a[i][j]);
	li	$t0,0			# $t0=i
	
sa_i:
	beq	$t0,$s0,sa_i_end
	li	$t1,0			# $t1=j
	
sa_j:
	beq	$t1,$s0,sa_j_end
	
	getmartix($t3,$t0,$t1)
	li	$v0,5
	syscall
	sw	$v0,martix_a($t3)	# scanf("%d",&a[i][j]);
	addi	$t1,$t1,1
	j	sa_j

sa_j_end:
	addi	$t0,$t0,1
	j	sa_i
	
sa_i_end:
	
	# scanf("%d",&b[i][j]);
	li	$t0,0			# $t0=i
	
sb_i:
	beq	$t0,$s0,sb_i_end
	li	$t1,0			# $t1=j
	
sb_j:
	beq	$t1,$s0,sb_j_end
	
	getmartix($t3,$t0,$t1)
	li	$v0,5
	syscall
	sw	$v0,martix_b($t3)	# scanf("%d",&b[i][j]);
	addi	$t1,$t1,1
	j	sb_j

sb_j_end:
	addi	$t0,$t0,1
	j	sb_i
	
sb_i_end:
	
	# c[i][j]+=a[i][k]*b[k][j];
	li	$t0,0			# $t0=i
	
sc_i:
	beq	$t0,$s0,sc_i_end
	li	$t1,0			# $t1=j
	
sc_j:
	beq	$t1,$s0,sc_j_end
	
	getmartix($t3,$t0,$t1)
	sw	$zero,martix_c($t3)	# c[i][j]=0;
	li	$s1,0			# $s1=c[i][j]
	
	li	$t2,0			# $t2=k
	
sc_k:
	beq	$t2,$s0,sc_k_end
	
	getmartix($t3,$t0,$t2)
	lw	$t5,martix_a($t3)
	
	getmartix($t3,$t2,$t1)
	lw	$t6,martix_b($t3)
	mul	$t3,$t5,$t6
	add	$s1,$s1,$t3
	getmartix($t3,$t0,$t1)
	sw	$s1,martix_c($t3)	# c[i][j]+=a[i][k]*b[k][j];
	
	addi	$t2,$t2,1
	j	sc_k
	
sc_k_end:
	addi	$t1,$t1,1
	j	sc_j

sc_j_end:
	addi	$t0,$t0,1
	j	sc_i
	
sc_i_end:
	
	
	# printf("%d ",c[i][j]);
	li	$t0,0			# $t0=i
	
s_i:
	beq	$t0,$s0,s_i_end
	li	$t1,0			# $t1=j
	
s_j:
	beq	$t1,$s0,s_j_end
	
	getmartix($t3,$t0,$t1)
	lw	$s2,martix_c($t3)
	
	li	$v0,1
	move	$a0,$s2
	syscall
	
	li	$v0,4
	la	$a0,str_space
	syscall
	
	addi	$t1,$t1,1
	j	s_j

s_j_end:
	addi	$t0,$t0,1
	
	li	$v0,4
	la	$a0,str_enter
	syscall
	
	j	s_i
	
s_i_end:
	
	li	$v0,10
	syscall
	
	
	
	
	
	
	
	
	
	
	
	
	
	