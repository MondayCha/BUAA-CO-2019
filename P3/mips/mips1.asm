.data
string:		.space	80

.text
ori	$a0,$0,1
ori	$t0,$0,2

j	t1
t2:
ori	$t2,$0,3
j	end
t1:
ori	$t1,$0,4
jal	t2
end:




