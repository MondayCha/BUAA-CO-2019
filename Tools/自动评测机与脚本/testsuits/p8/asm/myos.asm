.data
status: .space 4
# status for user buttons:
#  0: show timer count
#  1: show uart recv
#  2: show uart send
#  3: send data of switch[7:0]
#  4: show switch[31:0]
#  5: show switch[63:32]
#  6: show led status
#  7: show PrID
timer_count: .space 4
uart_recv: .space 4
uart_send: .space 4

.data 0x7f00	# timer
timer_ctrl: .space 4
timer_preset: .space 4
timer: .space 4

.data 0x7f10	# uart
uart_data: .space 4
.space 12
uart_status: .space 4
uart_divr: .space 4
uart_divt: .space 4

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

andi $k0, $k1, 1
beqz $k0, ip_handler_next1
nop
jal timer_count_iter
nop
ip_handler_next1:
andi $k0, $k1, 2
beqz $k0, ip_handler_next2
nop
jal uart_recv_data
nop
ip_handler_next2:
andi $k0, $k1, 0x20
beqz $k0, ip_handler_next3
li $a0, 0
jal get_status
li $a0, 1

ip_handler_next3:
move $a0, $v0

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
li $t0, 0xb	# mode 1 and enable
sw $t0, timer_ctrl

# UART 9600 band rate
li $t0, 0x145
sw $t0, uart_divr
li $t0, 0xa2b
sw $t0, uart_divt

sw $zero, status
sw $zero, timer_count
sw $zero, uart_recv
sw $zero, uart_send

sw $zero, led

sw $zero, digitube_set
sw $zero, digitube_status

mfc0 $t3, $12
li $t3, 0xfc01
mtc0 $t3, $12	# enable all interrupts

# li $a0, 1
# li $t0, 0x20
# sw $t0, uart_status
# li $t0, 0x8
# sw $t0, userkey
# jal get_status
# nop
# li $t0, 0
# sw $t0, userkey
# jal get_status
# nop
# li $t0, 0x391a9671
# sw $t0, switchA
# li $t0, 0x6391a967
# sw $t0, switchB
# li $t0, 0x16391a96
# sw $t0, led
# li $t0, 0x12
# sb $t0, uart_send
# li $t0, 0x34
# sb $t0, uart_recv

jal get_status
nop
jal led_logic
nop
jal digitube_logic
nop

j infloop
nop


get_status:
addi $sp, $sp, -12
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $t0, 8($sp)

lbu $s1, userkey
li $s0, 0
beqz $s1, get_status_end
li $v0, 0

move $v0, $a0

get_status_C1:
# (db) sw $s0, status
andi $t0, $s1, 1	# check i-th button status
bgtz $t0, get_status_end	# if i-th button is pressed, store i into status and end
sw $s0, status	# (db)
addi $s0, $s0, 1
# (db) srl $s1, $s1, 1
bgtz $s1, get_status_C1	# if any button is pressed, loop
srl $s1, $s1, 1	# (db)

get_status_end:
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
and $s0, $s0, $s1
lw $s1, userkey
xor $s0, $s0, $s1
sw $s0, led

lw $s0, 0($sp)
lw $s1, 4($sp)
# addi $sp, $sp, 8
jr $ra
addi $sp, $sp, 8


digitube_logic:
addi $sp, $sp, -12
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $ra, 8($sp)

lw $s0, status
sb $s0, digitube_status

lw $s1, timer_count
beqz $s0, digitube_logic_end	# if status == 0, show timer count
sw $s1, digitube_set

addiu $s0, $s0, -1
lw $s1, uart_recv
beqz $s0, digitube_logic_end	# if status == 1, show uart recv
sw $s1, digitube_set

addiu $s0, $s0, -1
lw $s1, uart_send
beqz $s0, digitube_logic_end	# if status == 2, show uart send
sw $s1, digitube_set

addiu $s0, $s0, -1
bnez $s0, digitube_logic_C1	# if status == 3...
nop
beqz $a0, digitube_logic_end	# and if the button interrupts, send data and show result
nop
jal uart_send_data
nop
j digitube_logic_end
sw $v0, digitube_set	# (db)
digitube_logic_C1:

addiu $s0, $s0, -1
lw $s1, switchA
beqz $s0, digitube_logic_end	# if status == 4, show switch[31:0]
sw $s1, digitube_set

addiu $s0, $s0, -1
lw $s1, switchB
beqz $s0, digitube_logic_end	# if status == 5, show switch[63:32]
sw $s1, digitube_set

addiu $s0, $s0, -1
lw $s1, led
beqz $s0, digitube_logic_end	# if status == 6, show led status
sw $s1, digitube_set

addiu $s0, $s0, -1
mfc0 $s1, $15
beqz $s0, digitube_logic_end	# if status == 7, show PrID
sw $s1, digitube_set

# if status is invalid
li $s0, 0xffffffff
sb $s0, digitube_status
sb $s0, digitube_set

digitube_logic_end:
lw $s0, 0($sp)
lw $s1, 4($sp)
lw $ra, 8($sp)
# addi $sp, $sp, 12
jr $ra
addi $sp, $sp, 12


timer_count_iter:
addi $sp, $sp, -4
sw $s0, 0($sp)
lw $s0, timer_count
addiu $s0, $s0, 1
sw $s0, timer_count
lw $s0, 0($sp)
# addi $sp, $sp, 4
jr $ra
addi $sp, $sp, 4


uart_send_data:
addi $sp, $sp, -4
sw $s0, 0($sp)

lw $s0, uart_status
andi $s0, $s0, 0x20
beqz $s0, uart_send_data_fail	# if cannot send
nop

lbu $s0, switchA
# (db) sw $s0, uart_data
j uart_send_data_end
sw $s0, uart_data # (db)

uart_send_data_fail:
li $s0, 0xffffffff

uart_send_data_end:
sw $s0, uart_send
move $v0, $s0

lw $s0, 0($sp)
# addi $sp, $sp, 4
jr $ra
addi $sp, $sp, 4


uart_recv_data:
addi $sp, $sp, -4
sw $s0, 0($sp)

lw $s0, uart_status
andi $s0, $s0, 0x1
beqz $s0, uart_recv_data_end	# if nothing received
nop

lw $s0, uart_data
sw $s0, uart_recv

uart_recv_data_end:
lw $s0, 0($sp)
# addi $sp, $sp, 4
jr $ra
addi $sp, $sp, 4


infloop:
j infloop
nop
