.data
switchA_buffer: .space 4
timer_count: .space 4

.data 0x7f00	# timer
timer_ctrl: .space 4
timer_preset: .space 4
timer: .space 4

.data 0x7f2c	# dipswitch
switchA: .space 4
switchB: .space 4

.data 0x7f34:	# led
led: .space 4

.data 0x7f38:	# digitube
digitube_set: .space 4
digitube_status: .space 4

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

andi $k0, $k1, 1
beqz $k0, ip_handler_next1
nop
jal timer_count_iter
nop
ip_handler_next1:
andi $k0, $k1, 4
beqz $k0, ip_handler_next2
nop
jal reset_timer
nop
ip_handler_next2:

jal led_logic
nop
jal digitube_logic
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

li $t0, 12500000	# 1 second
# li $t0, 1250	# 0.1 ms
sw $t0, timer_preset

sw $zero, switchA_buffer
sw $zero, timer_count

sw $zero, led

sw $zero, digitube_set
sw $zero, digitube_status

jal reset_timer
nop

mfc0 $t3, $12
li $t3, 0xfc01
mtc0 $t3, $12	# enable all interrupts

jal led_logic
nop
jal digitube_logic
nop

j infloop
nop

reset_timer:
addi $sp, $sp, -8
sw $s0, 0($sp)
sw $s1, 4($sp)
lw $s0, switchA
lw $s1, switchA_buffer
beq $s0, $s1, reset_timer_end	# if switchA doesn't change, then return
nop
sw $s0, timer_count
sw $s0, switchA_buffer
li $s0, 0x0	# stop timer
sw $s0, timer_ctrl
li $s0, 0xb	# mode 1 and enable
sw $s0, timer_ctrl
reset_timer_end:
lw $s0, 0($sp)
lw $s1, 4($sp)
# addi $sp, $sp, 8
jr $ra
addi $sp, $sp, 8


led_logic:
addi $sp, $sp, -4
sw $s0, 0($sp)

lw $s0, switchA
sw $s0, led

lw $s0, 0($sp)
# addi $sp, $sp, 4
jr $ra
addi $sp, $sp, 4


digitube_logic:
addi $sp, $sp, -4
sw $s0, 0($sp)

sb $zero, digitube_status

lw $s0, timer_count
sw $s0, digitube_set

lw $s0, 0($sp)
# addi $sp, $sp, 4
jr $ra
addi $sp, $sp, 4


timer_count_iter:
addi $sp, $sp, -4
sw $s0, 0($sp)
lw $s0, timer_count
beqz $s0, timer_count_iter_end	# if timer_count > 0, do iteration
addiu $s0, $s0, -1	# (it's ok to be a branch delay slot)
sw $s0, timer_count
timer_count_iter_end:
lw $s0, 0($sp)
# addi $sp, $sp, 4
jr $ra
addi $sp, $sp, 4


infloop:
j infloop
nop
