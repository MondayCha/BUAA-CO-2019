
.data
.space 64
arr1: .space 64
arr2: .space 64
.space 64


.text

N0: srl $t3, $t2, 20
N1: add $t2, $t2, $t1
N2: srl $t3, $t3, 28
addi $t3, $t3, 64
lb $t2, 7($t3)
jalr $
