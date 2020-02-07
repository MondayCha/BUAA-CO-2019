.macro uart9600
li $t0, 0
sb $t0, digitube_status
li $t0, 0x145
sw $t0, uart_divr
li $t0, 0xa2b
sw $t0, uart_divt
.end_macro
.macro uart19200
li $t0, 1
sb $t0, digitube_status
li $t0, 0xa2
sw $t0, uart_divr
li $t0, 0x515
sw $t0, uart_divt
.end_macro
.macro uart38400
li $t0, 2
sb $t0, digitube_status
li $t0, 0x50
sw $t0, uart_divr
li $t0, 0x28a
sw $t0, uart_divt
.end_macro
.macro uart57600
li $t0, 3
sb $t0, digitube_status
li $t0, 0x35
sw $t0, uart_divr
li $t0, 0x1b1
sw $t0, uart_divt
.end_macro
.macro uart115200
li $t0, 4
sb $t0, digitube_status
li $t0, 0x1a
sw $t0, uart_divr
li $t0, 0xd8
sw $t0, uart_divt
.end_macro

.data
timer_count: .space 4

.data 0x7f10	# uart
uart_data: .space 4
.space 12
uart_status: .space 4
uart_divr: .space 4
uart_divt: .space 4

.data 0x7f00	# timer
timer_ctrl: .space 4
timer_preset: .space 4
timer: .space 4

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

andi $k0, $k1, 1	# timer
beqz $k0, ip_handler_next1
nop
jal uart_proc
nop
jal timer_count_iter
nop
ip_handler_next1:
andi $k0, $k1, 0x20	# userkey
beqz $k0, ip_handler_next2
nop
jal set_band_rate
nop

ip_handler_next2:

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

sw $zero, timer_count
sw $zero, digitube_set
sw $zero, digitube_status

li $t0, 12500000	# 1 second
# li $t0, 1250	# 0.1 ms
sw $t0, timer_preset
li $s0, 0xb	# mode 1 and enable
sw $s0, timer_ctrl

uart9600

mfc0 $t3, $12
li $t3, 0xfc01
mtc0 $t3, $12	# only enable uart and userkey

jal set_band_rate
nop

j infloop
nop


set_band_rate:
addi $sp, $sp, -12
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $t0, 8($sp)

lbu $s0, userkey
beqz $s0, set_band_rate_end
nop
#  0~4: 5 band rates
#  else: 9600

andi $s1, $s0, 1
beqz $s1, skip1
srl $s0, $s0, 1
uart9600
j set_band_rate_end
nop
skip1:

andi $s1, $s0, 1
beqz $s1, skip2
srl $s0, $s0, 1
uart19200
j set_band_rate_end
nop
skip2:

andi $s1, $s0, 1
beqz $s1, skip3
srl $s0, $s0, 1
uart38400
j set_band_rate_end
nop
skip3:

andi $s1, $s0, 1
beqz $s1, skip4
srl $s0, $s0, 1
uart57600
j set_band_rate_end
nop
skip4:

andi $s1, $s0, 1
beqz $s1, skip5
srl $s0, $s0, 1
uart115200
j set_band_rate_end
nop
skip5:

uart9600

set_band_rate_end:
lw $s0, 0($sp)
lw $s1, 4($sp)
lw $t0, 8($sp)
# addi $sp, $sp, 12
jr $ra
addi $sp, $sp, 12


uart_proc:
addi $sp, $sp, -12
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $t0, 8($sp)

lw $s0, uart_status

andi $t0, $s0, 0x20
beqz $t0, uart_proc_end
nop

lw $s1, timer_count
addiu $s1, $s1, '0'
sw $s1, uart_data

uart_proc_end:
lw $s0, 0($sp)
lw $s1, 4($sp)
lw $t0, 8($sp)
# addi $sp, $sp, 12
jr $ra
addi $sp, $sp, 12


timer_count_iter:
addi $sp, $sp, -8
sw $s0, 0($sp)
sw $t0, 4($sp)

lw $s0, timer_count
addiu $s0, $s0, 1
addiu $t0, $s0, -10
bltz $t0, tci_skip
nop
li $s0, 0
tci_skip:
sw $s0, timer_count

timer_count_iter_end:
lw $s0, 0($sp)
lw $t0, 4($sp)
# addi $sp, $sp, 8
jr $ra
addi $sp, $sp, 8


infloop:
j infloop
nop
