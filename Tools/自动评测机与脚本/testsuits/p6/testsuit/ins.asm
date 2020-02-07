
.data
.space 64
arr1: .space 64
arr2: .space 64
.space 64


.text

N0: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffc
lw $t2, 0($zero)
N1: srl $t2, $t0, 9
N2: sra $t0, $t0, 28
lbu $t2, 73($t0)
N3: sra $t3, $t3, 28
andi $t3, $t3, 0xfffffffc
lw $t1, 76($t3)
N4: subu $t2, $t0, $t1
N5: andi $t3, $t1, 28031
N6: srlv $t2, $t0, $t3
N7: sllv $t3, $zero, $t2
N8: srl $t2, $t2, 28
addi $t2, $t2, 64
andi $t2, $t2, 0xfffffffe
sh $t1, 10($t2)
N9: nop
N10: xor $t2, $zero, $t1
N11: sra $t1, $t1, 28
andi $t1, $t1, 0xfffffffe
lh $t3, 78($t1)
N12: andi $zero, $t1, 22140
N13: xori $t2, $t1, 5703
N14: nop
N15: sra $t2, $t2, 28
andi $t2, $t2, 0xfffffffc
lw $t1, 64($t2)
N16: nor $zero, $t0, $t3
N17: srl $t0, $t0, 28
addi $t0, $t0, 64
andi $t0, $t0, 0xfffffffe
lhu $t1, 8($t0)
N18: sra $t3, $t3, 28
andi $t3, $t3, 0xfffffffc
lw $t0, 64($t3)
N19: mthi $t2
N20: multu $t2, $t3
N21: slti $t3, $t2, 29176
N22: sra $t2, $t1, 12
N23: srl $t2, $t2, 28
addi $t2, $t2, 64
andi $t2, $t2, 0xfffffffe
lhu $t3, 0($t2)
N24: sra $zero, $zero, 28
lb $zero, 73($zero)
N25: srlv $t3, $t1, $zero
N26: mfhi $t2
N27: srav $t2, $zero, $zero
N28: srl $t2, $t2, 28
addi $t2, $t2, 64
lbu $t1, 4($t2)
N29: sra $t1, $t1, 28
andi $t1, $t1, 0xfffffffc
sw $t0, 68($t1)
N30: slt $t1, $t1, $t0
N31: nop
N32: srav $zero, $t1, $t2
N33: srl $t0, $t0, 28
addi $t0, $t0, 64
andi $t0, $t0, 0xfffffffe
lhu $t2, 0($t0)
N34: sltu $t1, $t3, $t3
N35: mflo $t3
N36: multu $t1, $t2
N37: srl $t1, $t1, 28
addi $t1, $t1, 64
andi $t1, $t1, 0xfffffffe
lh $t2, 8($t1)
N38: sra $zero, $zero, 28
lb $t1, 69($zero)
N39: ori $t1, $t1, 1
div $t3, $t1
N40: xor $t3, $t0, $zero
N41: srl $t1, $t1, 28
addi $t1, $t1, 64
andi $t1, $t1, 0xfffffffc
sw $t3, 8($t1)
N42: srl $t2, $t2, 28
addi $t2, $t2, 64
lb $t3, 4($t2)
N43: sra $t3, $t3, 28
andi $t3, $t3, 0xfffffffc
sw $t0, 76($t3)
N44: sll $zero, $t3, 2
N45: addiu $zero, $t2, 58684
N46: sllv $t3, $zero, $t0
N47: subu $zero, $t3, $t0
N48: mtlo $t3
N49: multu $zero, $t1
N50: srl $t3, $t3, 28
addi $t3, $t3, 64
lbu $t3, 14($t3)
N51: addu $t2, $zero, $zero
N52: andi $t1, $t2, 44958
N53: addiu $t0, $t1, 55236
N54: srl $t0, $t0, 28
addi $t0, $t0, 64
lb $t0, 0($t0)
N55: sra $t3, $t3, 28
lbu $t0, 77($t3)
N56: srl $t1, $t1, 28
addi $t1, $t1, 64
andi $t1, $t1, 0xfffffffe
sh $t3, 4($t1)
N57: mflo $zero
N58: sra $t0, $t3, 8
N59: slti $t1, $t2, -27
N60: sltiu $t2, $t1, -30661
N61: srl $t1, $t1, 28
addi $t1, $t1, 64
andi $t1, $t1, 0xfffffffc
sw $t3, 12($t1)
N62: mtlo $t1
N63: subu $t1, $t1, $t2
N64: sra $t0, $t0, 28
sb $t2, 66($t0)
N65: xori $t0, $t1, 44060
N66: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffc
sw $t2, 4($zero)
N67: sra $t0, $t1, 26
N68: srl $zero, $zero, 28
addi $zero, $zero, 64
lb $zero, 2($zero)
N69: addu $t2, $zero, $t3
N70: srl $t3, $t3, 28
addi $t3, $t3, 64
andi $t3, $t3, 0xfffffffc
sw $t3, 4($t3)
N71: srlv $zero, $t3, $t0
N72: mflo $t2
N73: srl $t3, $t3, 28
addi $t3, $t3, 64
lbu $t0, 9($t3)
N74: sra $t3, $t0, 16
N75: mflo $t3
N76: srlv $t1, $t2, $t3
N77: sra $t1, $t1, 28
andi $t1, $t1, 0xfffffffc
sw $t1, 64($t1)
N78: addiu $t1, $t1, 8039
N79: slti $t3, $zero, 9223
N80: nor $t2, $t0, $zero
N81: sra $t3, $t3, 28
andi $t3, $t3, 0xfffffffe
lhu $zero, 78($t3)
N82: srl $t2, $t2, 28
addi $t2, $t2, 64
andi $t2, $t2, 0xfffffffc
lw $zero, 8($t2)
N83: ori $t1, $t1, 1
divu $t3, $t1
N84: multu $t2, $t3
N85: nop
N86: nop
N87: mtlo $t0
N88: mtlo $t2
N89: mthi $t2
N90: sra $t1, $t1, 28
andi $t1, $t1, 0xfffffffc
sw $zero, 76($t1)
N91: sltiu $t1, $t0, -16752
N92: sra $zero, $zero, 28
lb $t1, 75($zero)
N93: srl $t0, $t1, 6
N94: nop
N95: mthi $t2
N96: mult $t0, $zero
N97: or $t2, $zero, $t1
N98: sra $t0, $t0, 28
andi $t0, $t0, 0xfffffffc
sw $t3, 68($t0)
N99: and $t3, $t3, $zero
N100: srl $t1, $t1, 28
addi $t1, $t1, 64
andi $t1, $t1, 0xfffffffe
lhu $t2, 10($t1)
N101: sra $t2, $t2, 28
lb $t0, 75($t2)
N102: sltiu $t0, $t1, 7230
N103: srl $zero, $zero, 28
addi $zero, $zero, 64
sb $t3, 5($zero)
N104: srl $t1, $t1, 28
addi $t1, $t1, 64
lb $t2, 2($t1)
N105: nor $t3, $t0, $t1
N106: srl $t2, $t1, 18
N107: or $t0, $t3, $t0
N108: sltu $t3, $t1, $zero
N109: nor $t0, $t0, $t0
N110: multu $t2, $t0
N111: srl $zero, $t0, 2
N112: slt $t3, $t3, $t2
N113: ori $t1, $t1, 63174
N114: sra $zero, $zero, 28
andi $zero, $zero, 0xfffffffe
sh $t1, 74($zero)
N115: xor $t1, $t0, $t0
N116: srlv $zero, $zero, $t2
N117: sra $t3, $t3, 28
lb $t2, 68($t3)
N118: slt $t3, $t2, $t0
N119: multu $t3, $t3
N120: mult $t0, $t1
N121: srlv $t0, $zero, $t2
N122: ori $t1, $t3, 48054
N123: srl $t3, $t3, 28
addi $t3, $t3, 64
lb $t3, 9($t3)
N124: xori $t0, $t1, 57756
N125: srl $t0, $t0, 16
N126: sra $t1, $t1, 28
andi $t1, $t1, 0xfffffffc
sw $t1, 76($t1)
N127: ori $t0, $t0, 1
divu $t1, $t0
N128: and $t2, $t0, $t0
N129: mthi $t0
N130: sra $t3, $t3, 28
andi $t3, $t3, 0xfffffffc
lw $t0, 68($t3)
N131: srl $t0, $t2, 10
N132: addu $t3, $t1, $t1
N133: sra $t1, $t1, 28
andi $t1, $t1, 0xfffffffc
lw $t3, 68($t1)
N134: srl $t3, $t3, 28
addi $t3, $t3, 64
andi $t3, $t3, 0xfffffffe
lh $zero, 14($t3)
N135: nor $t2, $t2, $t0
N136: multu $zero, $t1
N137: andi $t3, $t0, 12006
N138: srlv $t2, $t3, $t1
N139: sllv $t3, $t2, $t3
N140: or $zero, $zero, $t3
N141: srl $t2, $t2, 28
addi $t2, $t2, 64
andi $t2, $t2, 0xfffffffc
sw $zero, 0($t2)
N142: srl $t0, $t0, 28
addi $t0, $t0, 64
sb $t3, 3($t0)
N143: srl $t2, $t2, 28
addi $t2, $t2, 64
andi $t2, $t2, 0xfffffffc
lw $zero, 8($t2)
N144: lui $t2, 48682
N145: slt $t0, $t3, $zero
N146: andi $t2, $t0, 53057
N147: srl $t3, $t1, 26
N148: slti $t3, $zero, 6917
N149: srl $t1, $t1, 28
addi $t1, $t1, 64
andi $t1, $t1, 0xfffffffc
sw $zero, 0($t1)
N150: nop
N151: sra $t2, $t2, 28
sb $t0, 65($t2)
N152: srl $t0, $t0, 28
addi $t0, $t0, 64
andi $t0, $t0, 0xfffffffe
sh $zero, 6($t0)
N153: sltu $t3, $t0, $t2
N154: xori $t3, $t1, 35481
N155: subu $t0, $t1, $t3
N156: sra $t2, $t0, 21
N157: subu $t2, $t2, $t0
N158: sltiu $t1, $t3, 28144
N159: mult $t1, $t3
N160: multu $zero, $t3
N161: xori $t2, $t3, 45996
N162: subu $t2, $t0, $t1
N163: sra $t3, $t3, 28
sb $t3, 65($t3)
N164: sra $zero, $zero, 28
andi $zero, $zero, 0xfffffffe
lhu $zero, 76($zero)
N165: andi $t1, $t0, 5230
N166: slti $t3, $t1, 14789
N167: or $t1, $t2, $t0
N168: srav $t0, $t2, $zero
N169: ori $t1, $t1, 1
divu $t0, $t1
N170: sra $zero, $zero, 28
andi $zero, $zero, 0xfffffffe
sh $t3, 64($zero)
N171: srl $t1, $t1, 28
addi $t1, $t1, 64
andi $t1, $t1, 0xfffffffc
lw $t1, 8($t1)
N172: addiu $t3, $t3, 25478
N173: addiu $t0, $t1, 18668
N174: xor $t1, $t0, $t2
N175: sra $t1, $t1, 28
lb $t0, 76($t1)
N176: sra $t2, $t1, 9
N177: srl $t2, $t3, 12
N178: sra $t0, $t0, 28
andi $t0, $t0, 0xfffffffe
lh $zero, 72($t0)
N179: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffe
lh $t3, 4($zero)
N180: and $zero, $t0, $t2
N181: sll $zero, $t1, 28
N182: lui $zero, 29123
N183: sltu $t0, $t3, $t0
N184: srl $t1, $t1, 28
addi $t1, $t1, 64
lbu $t1, 4($t1)
N185: sll $t3, $zero, 24
N186: sra $t2, $t2, 28
lbu $t2, 73($t2)
N187: subu $t2, $t0, $t3
N188: slt $t1, $t3, $t2
N189: subu $t3, $t1, $t0
N190: sra $zero, $zero, 28
andi $zero, $zero, 0xfffffffc
lw $t1, 68($zero)
N191: and $zero, $t2, $t3
N192: srav $zero, $zero, $t2
N193: sll $t0, $t1, 19
N194: slti $t0, $zero, 25058
N195: sll $t3, $t3, 5
N196: xori $zero, $t0, 42075
N197: mtlo $zero
N198: srl $t1, $t1, 28
addi $t1, $t1, 64
andi $t1, $t1, 0xfffffffe
lh $t3, 6($t1)
N199: sra $t1, $t1, 28
andi $t1, $t1, 0xfffffffe
sh $t1, 66($t1)
N200: nop
EXIT:
beq $zero, $zero, EXIT
nop
