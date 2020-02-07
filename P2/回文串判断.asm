.data
string:		.space	80

.macro	getword(%ans,%i)
	move	%ans,%i
	sll	%ans,%ans,2
.end_macro

.text
	li	$v0,5
	syscall
	move	$s0,$v0			# scanf("%d",&n)
	
	li	$s1,1			# judge=1
	
	li	$t0,0			# $t0=i
	
for_i:	
	beq	$t0,$s0,i_end
	
	getword($t1,$t0)
	li	$v0,12
	syscall
	sw	$v0,string($t1)
	addi	$t0,$t0,1
	
	j	for_i
	
i_end:
	
	li	$t0,0			# $t0=j
	li	$t1,2
	div	$s0,$t1
	mflo	$s2			# s2=n/2
	
for_j:
	beq	$t0,$s2,j_end
	
	sub	$t1,$s0,$t0
	addi	$t1,$t1,-1
	
	getword($t2,$t0)
	lw	$t3,string($t2)
	getword($t2,$t1)
	lw	$t4,string($t2)
	
	beq	$t3,$t4,if_equal
	
	li	$s1,0			# judge=0
	
if_equal:
	addi	$t0,$t0,1
	
	j	for_j
	
j_end:

	move	$a0,$s1
	li	$v0,1
	syscall
	
	li	$v0,10
	syscall
	
	

	
