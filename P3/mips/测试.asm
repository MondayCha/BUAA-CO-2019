# ���Գ�����룺

.text
# oriָ�����
	ori 	$s0,$zero,15
	ori 	$s1,$zero,31

# adduָ�����
	addu	$s2,$s0,$s1
	addu 	$s3,$s0,$s2

# subuָ�����
	subu 	$s4,$s3,$s2
	subu 	$s5,$s2,$s1

# luiָ�����
	lui 	$s7,2333

# swָ�����
	sw 	$s0,0($zero)
	sw 	$s1,4($zero)

# lwָ�����
	lw 	$t0,0($zero)
	lw 	$t1,4($zero)

# beqָ�����
	beq 	$s0,$s1,equal1
	ori	$t2,$zero,1

equal1:
	beq 	$s1,$s1,equal2
	ori	$t3,$zero,2

equal2:
	ori	$t4,$zero,666
