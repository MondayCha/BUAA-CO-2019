.data
uart_send: .space 4
uart_send_len: .space 4

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

ip_handler_next1:
andi $k0, $k1, 2	# uart
beqz $k0, ip_handler_next2
nop
jal uart_send_data
nop
ip_handler_next2:
andi $k0, $k1, 0x20	# userkey
beqz $k0, ip_handler_next3
nop
jal proc
nop
ip_handler_next3:

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

# UART 9600 band rate
li $t0, 0x145
sw $t0, uart_divr
li $t0, 0xa2b
sw $t0, uart_divt

sw $zero, uart_send
sw $zero, uart_send_len

sw $zero, led

sw $zero, digitube_set
sw $zero, digitube_status

mfc0 $t3, $12
li $t3, 0xfc01
mtc0 $t3, $12	# enable all interrupts

jal led_logic
nop

jal proc
nop

j infloop
nop


led_logic:
addi $sp, $sp, -4
sw $s0, 0($sp)

lw $s0, switchB
sw $s0, led

lw $s0, 0($sp)
# addi $sp, $sp, 4
jr $ra
addi $sp, $sp, 4


proc:
addi $sp, $sp, -8
sw $s0, 0($sp)
sw $ra, 4($sp)

lw $s0, userkey
beqz $s0, proc_end
nop

lw $s0, switchB
sw $s0, digitube_set
sw $s0, uart_send
li $s0, 8
sw $s0, uart_send_len
jal uart_send_data
nop

proc_end:
lw $s0, 0($sp)
lw $ra, 4($sp)
# addi $sp, $sp, 8
jr $ra
addi $sp, $sp, 8


uart_send_data:
addi $sp, $sp, -8
sw $s0, 0($sp)
sw $t0, 4($sp)

lw $s0, uart_status
andi $s0, $s0, 0x20
beqz $s0, uart_send_data_end	# if cannot send
nop

lw $s0, uart_send_len
blez $s0, uart_send_data_end
sw $zero, uart_send_len
addiu $s0, $s0, -1
sw $s0, uart_send_len

lw $t0, uart_send
sll $s0, $s0, 2
srlv $t0, $t0, $s0
andi $t0, $t0, 0xf

blt $t0, 10, us_C1_1
nop
addiu $t0, $t0, 55	# 'A' - 10
j us_C1_end
nop
us_C1_1:
addiu $t0, $t0, '0'
us_C1_end:

sw $t0, uart_data

uart_send_data_end:
lw $s0, 0($sp)
lw $t0, 4($sp)
# addi $sp, $sp, 8
jr $ra
addi $sp, $sp, 8


infloop:
j infloop
nop
