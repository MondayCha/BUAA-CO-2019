.data 0x7f2c	# dipswitch
switchA: .space 4
switchB: .space 4

.data 0x7f34:	# led
led: .space 4

.data 0x7f38:	# digitube
digitube_set: .space 4
digitube_status: .space 4

.data 0x7f40:	# user key
userkey: .space 1

.ktext 0x4180
handler:
addi $sp, $sp, -24
sw $at, 0($sp)
sw $ra, 4($sp)
sw $k0, 8($sp)
sw $k1, 12($sp)
sw $a0, 16($sp)
sw $v0, 20($sp)

mfc0 $k1, $13	# fetch cause code
srl $k1, $k1, 2
andi $k1, $k1, 0x1f
beq $k1, $zero, ip_handler	# handle interruptions
nop
j exc_handler
nop


exc_handler:
# handle exceptions
mfc0 $k0, $14	# fetch epc
# addiu $k0, $k0, 4
mfc0 $k1, $13	# fetch cause bd
srl $k1, $k1, 31
beq $k1, $zero, exc_handler_C1End	# if bd epc += 8 else epc += 4
addiu $k0, $k0, 4
addiu $k0, $k0, 4
exc_handler_C1End:
andi $k0, $k0, 0x7ffc	# word align
mtc0 $k0, $14	# save to epc
j usermode_return
nop


ip_handler:
mfc0 $k1, $13
srl $k1, $k1, 10
andi $k1, $k1, 0x3f	# fetch hard ip
# 0: timer, 1: uart, 2: dipswitch, 5: userkey

andi $k0, $k1, 0x24
beqz $k0, ip_handler_next
jal calculator
nop
ip_handler_next:

jal led_logic
nop

j usermode_return
nop


usermode_return:
lw $at, 0($sp)
lw $ra, 4($sp)
lw $k0, 8($sp)
lw $k1, 12($sp)
lw $a0, 16($sp)
lw $v0, 20($sp)
addi $sp, $sp, 24
eret

.text

initial:
li $sp, 0x1ffc

mfc0 $t3, $12
li $t3, 0x9001
mtc0 $t3, $12	# enable interrupts of dipswitch and userkey

sw $zero, led

sw $zero, digitube_set
sw $zero, digitube_status

jal calculator
nop
jal led_logic
nop

j infloop
nop


calculator:
addi $sp, $sp, -12
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $t0, 8($sp)

lbu $s1, userkey
li $s0, 0
beqz $s1, digitube_logic_end
nop

get_status_C1:
andi $t0, $s1, 1	# check i-th button status
bgtz $t0, get_status_end	# if i-th button is pressed, store i into status and end
nop
addi $s0, $s0, 1
# (db) srl $s1, $s1, 1
bgtz $s1, get_status_C1	# if any button is pressed, loop
srl $s1, $s1, 1	# (db)

get_status_end:

sb $s0, digitube_status

lw $s1, switchA
lw $t0, switchB
addu $s1, $s1, $t0
beqz $s0, digitube_logic_end
sw $s1, digitube_set

addiu $s0, $s0, -1
lw $s1, switchA
# lw $t0, switchB
subu $s1, $s1, $t0
beqz $s0, digitube_logic_end
sw $s1, digitube_set

addiu $s0, $s0, -1
lw $s1, switchA
# lw $t0, switchB
and $s1, $s1, $t0
beqz $s0, digitube_logic_end
sw $s1, digitube_set

addiu $s0, $s0, -1
lw $s1, switchA
# lw $t0, switchB
or $s1, $s1, $t0
beqz $s0, digitube_logic_end
sw $s1, digitube_set

addiu $s0, $s0, -1
lw $s1, switchA
# lw $t0, switchB
nor $s1, $s1, $t0
beqz $s0, digitube_logic_end
sw $s1, digitube_set

addiu $s0, $s0, -1
lw $s1, switchA
# lw $t0, switchB
sllv $s1, $s1, $t0
beqz $s0, digitube_logic_end
sw $s1, digitube_set

addiu $s0, $s0, -1
lw $s1, switchA
# lw $t0, switchB
srlv $s1, $s1, $t0
beqz $s0, digitube_logic_end
sw $s1, digitube_set

# addiu $s0, $s0, -1
lw $s1, switchA
# lw $t0, switchB
srav $s1, $s1, $t0
# beqz $s0, digitube_logic_end
sw $s1, digitube_set

digitube_logic_end:
lw $s0, 0($sp)
lw $s1, 4($sp)
lw $t0, 8($sp)
# addi $sp, $sp, 12
jr $ra
addi $sp, $sp, 12


led_logic:
addi $sp, $sp, -8
sw $s0, 0($sp)
sw $s1, 4($sp)

lw $s0, switchA
lw $s1, switchB
xor $s0, $s0, $s1
sw $s0, led

lw $s0, 0($sp)
lw $s1, 4($sp)
# addi $sp, $sp, 8
jr $ra
addi $sp, $sp, 8


infloop:
j infloop
nop
