.text
	li	$v0,5
	syscall
	move	$s0,$v0
	addi	$s0,$s0,1
	li	$s1,1
	li	$s2,0
	
	li	$t0,1
i1:
 	bge	$t0,$s0,i1_end
 	mul	$s1,$s1,$t0
 	add	$s2,$s2,$s1
 	
 	addi	$t0,$t0,1
 	j	i1
i1_end:
	move	$a0,$s2
	li	$v0,1
	syscall
	
	li	$v0,10
	syscall
	