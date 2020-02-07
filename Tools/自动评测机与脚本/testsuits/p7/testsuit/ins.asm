
.data
.space 64
arr1: .space 64
arr2: .space 64
.space 64


.text

N0: srl $t0, $t0, 28
addi $t0, $t0, 64
andi $t0, $t0, 0xfffffffe
lhu $zero, 14($t0)
N1: ori $zero, $t1, 37505
N2: ori $t1, $t1, 1
divu $zero, $t1
N3: srl $t2, $t2, 10
N4: sllv $zero, $t1, $zero
N5: sra $t0, $t0, 28
lbu $t1, 78($t0)
N6: srl $t3, $t3, 28
addi $t3, $t3, 64
andi $t3, $t3, 0xfffffffc
sw $t0, 8($t3)
N7: sra $zero, $zero, 28
lb $t3, 68($zero)
N8: srl $t3, $t3, 28
addi $t3, $t3, 64
andi $t3, $t3, 0xfffffffc
sw $t2, 8($t3)
N9: srl $t2, $t2, 28
addi $t2, $t2, 64
sb $t0, 14($t2)
N10: bgtz $t0, N16
N11: sra $t0, $t0, 28
andi $t0, $t0, 0xfffffffc
lw $t2, 76($t0)
N12: j N156
N13: sub $t2, $zero, $t3
N14: sra $t1, $t2, 17
N15: mult $t3, $t0
N16: and $zero, $zero, $t0
N17: sra $zero, $zero, 28
andi $zero, $zero, 0xfffffffe
lh $t3, 72($zero)
N18: xori $zero, $t2, 41539
N19: ori $t2, $t2, 1
divu $zero, $t2
N20: srl $t3, $t3, 28
addi $t3, $t3, 64
lb $t3, 15($t3)
N21: ori $t2, $t2, 1
divu $zero, $t2
N22: slt $t0, $t2, $t3
N23: sra $t2, $t2, 28
lbu $zero, 67($t2)
N24: mtlo $t0
N25: srl $zero, $zero, 28
addi $zero, $zero, 64
lb $t3, 0($zero)
N26: lui $zero, 17273
N27: srl $t0, $t0, 28
addi $t0, $t0, 64
lbu $t2, 3($t0)
N28: add $t3, $t1, $t1
N29: addu $t1, $t1, $t3
N30: or $t2, $zero, $t0
N31: srl $t3, $t3, 28
addi $t3, $t3, 64
andi $t3, $t3, 0xfffffffc
lw $zero, 8($t3)
N32: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffc
lw $t0, 4($zero)
N33: beq $t3, $t1, N252
N34: srl $t3, $t3, 2
N35: addu $zero, $t1, $zero
N36: multu $t1, $zero
N37: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffe
sh $t3, 8($zero)
N38: add $t0, $t1, $t3
N39: srl $t2, $t2, 28
addi $t2, $t2, 64
andi $t2, $t2, 0xfffffffe
sh $zero, 0($t2)
N40: addi $zero, $t0, -12622
N41: srl $t1, $t1, 28
addi $t1, $t1, 64
lbu $zero, 2($t1)
N42: bgtz $t3, N222
N43: srl $t0, $t0, 28
addi $t0, $t0, 64
andi $t0, $t0, 0xfffffffe
sh $t0, 0($t0)
N44: srav $t2, $t0, $t1
N45: sub $t1, $t1, $t2
N46: bltz $t3, N218
N47: mtlo $t0
N48: jal N261
N49: sra $t0, $t0, 28
andi $t0, $t0, 0xfffffffe
sh $t2, 78($t0)
N50: srl $t2, $t2, 28
addi $t2, $t2, 64
andi $t2, $t2, 0xfffffffe
lh $t3, 0($t2)
N51: sra $t3, $t3, 28
lb $t2, 70($t3)
N52: srav $t3, $t1, $t2
N53: mthi $zero
N54: sltu $t3, $t0, $t2
N55: j N86
N56: sllv $t1, $zero, $zero
N57: and $t3, $t3, $zero
N58: or $t1, $zero, $t1
N59: slt $t1, $t3, $t1
N60: sra $t3, $t3, 28
lb $zero, 75($t3)
N61: srl $t3, $t3, 28
addi $t3, $t3, 64
sb $zero, 3($t3)
N62: slt $zero, $t2, $t3
N63: jal N270
N64: srav $t0, $t1, $zero
N65: addiu $t3, $t2, 62512
N66: srav $zero, $t3, $t3
N67: addiu $t2, $t2, 5344
N68: srl $t3, $t3, 28
addi $t3, $t3, 64
lbu $zero, 9($t3)
N69: blez $zero, N80
N70: mtlo $t0
N71: srl $t0, $t0, 28
addi $t0, $t0, 64
andi $t0, $t0, 0xfffffffe
lh $t1, 6($t0)
N72: srl $t3, $t3, 28
addi $t3, $t3, 64
andi $t3, $t3, 0xfffffffe
lhu $t0, 6($t3)
N73: sra $t1, $t1, 28
sb $t0, 79($t1)
N74: srl $zero, $zero, 28
addi $zero, $zero, 64
lbu $zero, 12($zero)
N75: srl $t3, $t3, 28
addi $t3, $t3, 64
lbu $t2, 6($t3)
N76: bgez $t3, N118
N77: mfhi $zero
N78: sra $zero, $zero, 28
andi $zero, $zero, 0xfffffffe
lh $t1, 78($zero)
N79: sltiu $t0, $t1, -23716
N80: la $ra, N160
jalr $t2, $ra
N81: mthi $zero
N82: ori $t0, $t0, 1
div $zero, $t0
N83: srl $t2, $t2, 28
addi $t2, $t2, 64
andi $t2, $t2, 0xfffffffe
sh $zero, 0($t2)
N84: sra $t3, $t3, 28
andi $t3, $t3, 0xfffffffc
lw $t3, 68($t3)
N85: sra $t3, $t3, 28
sb $t3, 75($t3)
N86: j N192
N87: sub $t1, $zero, $t3
N88: slt $t3, $t3, $t3
N89: srl $t1, $t1, 28
addi $t1, $t1, 64
andi $t1, $t1, 0xfffffffe
lhu $t0, 6($t1)
N90: mfhi $zero
N91: la $t3, N143
jr $t3
N92: mthi $t0
N93: xor $t0, $t2, $t0
N94: sltu $t0, $t0, $zero
N95: la $ra, N184
jalr $t1, $ra
N96: srl $t0, $t0, 0
N97: bltz $t1, N211
N98: xori $t0, $t1, 14807
N99: add $t1, $zero, $t0
N100: srl $t3, $t3, 28
addi $t3, $t3, 64
andi $t3, $t3, 0xfffffffe
sh $zero, 2($t3)
N101: sra $t1, $t1, 28
andi $t1, $t1, 0xfffffffe
lhu $t3, 66($t1)
N102: la $t0, N170
jr $t0
N103: mflo $t1
N104: slti $t2, $t0, 5790
N105: ori $t3, $t3, 36145
N106: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffc
lw $t3, 12($zero)
N107: blez $zero, N208
N108: srlv $zero, $t2, $t2
N109: sltiu $t0, $t2, 27776
N110: srav $t0, $t0, $zero
N111: andi $t3, $t3, 49925
N112: bne $t1, $t2, N297
N113: sll $t3, $zero, 20
N114: add $t0, $t2, $t0
N115: ori $t3, $t3, 1
div $t1, $t3
N116: mult $t2, $t0
N117: srl $t3, $t3, 28
addi $t3, $t3, 64
andi $t3, $t3, 0xfffffffe
lh $t3, 6($t3)
N118: addi $t2, $t2, -26557
N119: mflo $t0
N120: multu $t3, $t3
N121: srl $t0, $t0, 28
addi $t0, $t0, 64
sb $t1, 9($t0)
N122: addu $zero, $zero, $t3
N123: srl $t2, $t2, 28
addi $t2, $t2, 64
andi $t2, $t2, 0xfffffffc
sw $t3, 0($t2)
N124: addu $zero, $zero, $t1
N125: la $ra, N191
jr $ra
N126: sra $t1, $t1, 28
andi $t1, $t1, 0xfffffffe
sh $t1, 68($t1)
N127: sra $t0, $t0, 28
andi $t0, $t0, 0xfffffffc
lw $t0, 64($t0)
N128: nop
N129: blez $t2, N153
N130: or $t3, $t0, $t1
N131: sra $t3, $t3, 28
andi $t3, $t3, 0xfffffffc
lw $t3, 76($t3)
N132: bgez $t1, N170
N133: addiu $t3, $t0, 35280
N134: sub $t3, $t2, $t1
N135: sra $t3, $t3, 28
sb $zero, 65($t3)
N136: beq $t2, $t2, N203
N137: andi $t3, $zero, 55586
N138: sra $zero, $zero, 28
sb $t0, 65($zero)
N139: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffe
lhu $t0, 6($zero)
N140: srl $zero, $zero, 28
addi $zero, $zero, 64
sb $zero, 1($zero)
N141: mtlo $zero
N142: lui $t2, 44183
N143: bgez $t0, N220
N144: mtlo $t1
N145: sub $t3, $zero, $zero
N146: srl $t1, $t1, 28
addi $t1, $t1, 64
andi $t1, $t1, 0xfffffffe
sh $t0, 2($t1)
N147: or $t1, $t1, $t3
N148: j N297
N149: lui $t1, 12458
N150: slti $t3, $t0, -20234
N151: sra $t0, $t0, 28
sb $zero, 67($t0)
N152: blez $zero, N188
N153: mult $zero, $zero
N154: srl $t0, $t0, 28
addi $t0, $t0, 64
lb $t1, 13($t0)
N155: srl $t1, $t1, 28
addi $t1, $t1, 64
lb $t2, 7($t1)
N156: srl $t2, $t2, 28
addi $t2, $t2, 64
andi $t2, $t2, 0xfffffffc
sw $t3, 8($t2)
N157: multu $t3, $t2
N158: srl $t0, $t0, 28
addi $t0, $t0, 64
andi $t0, $t0, 0xfffffffe
lh $zero, 8($t0)
N159: sub $t2, $zero, $zero
N160: andi $t3, $t1, 28872
N161: ori $zero, $zero, 62473
N162: mflo $zero
N163: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffc
sw $zero, 12($zero)
N164: ori $t1, $t1, 35611
N165: sra $t0, $t0, 28
andi $t0, $t0, 0xfffffffc
sw $t3, 64($t0)
N166: sra $zero, $zero, 28
andi $zero, $zero, 0xfffffffe
sh $t0, 66($zero)
N167: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffc
sw $t1, 0($zero)
N168: srl $t0, $t0, 28
addi $t0, $t0, 64
andi $t0, $t0, 0xfffffffe
sh $t0, 8($t0)
N169: j N219
N170: addiu $t1, $t0, 39577
N171: mtlo $t1
N172: sub $t1, $t1, $t1
N173: mflo $t0
N174: and $t3, $t3, $zero
N175: nop
N176: addi $zero, $t2, -19050
N177: srl $t3, $t3, 28
addi $t3, $t3, 64
lb $t1, 12($t3)
N178: la $t0, N209
jr $t0
N179: srlv $zero, $t2, $t1
N180: and $t1, $t3, $t3
N181: srl $t0, $t0, 28
addi $t0, $t0, 64
sb $t2, 7($t0)
N182: mflo $t1
N183: srl $t3, $t3, 28
addi $t3, $t3, 64
sb $t1, 3($t3)
N184: sra $t3, $zero, 19
N185: srl $t0, $t0, 28
addi $t0, $t0, 64
lb $t2, 11($t0)
N186: addi $t1, $t1, -15088
N187: andi $t1, $t2, 3119
N188: mfhi $t1
N189: mfhi $t3
N190: xori $t0, $zero, 57913
N191: sra $t0, $t0, 28
andi $t0, $t0, 0xfffffffc
lw $t1, 72($t0)
N192: sra $zero, $zero, 28
andi $zero, $zero, 0xfffffffc
sw $t1, 72($zero)
N193: srl $t1, $t2, 4
N194: nop
N195: subu $t2, $t1, $t0
N196: nor $t0, $t0, $t2
N197: srl $t3, $t3, 28
addi $t3, $t3, 64
andi $t3, $t3, 0xfffffffc
lw $zero, 0($t3)
N198: xor $t2, $t0, $t1
N199: srav $t0, $t2, $t2
N200: srl $t0, $t0, 28
addi $t0, $t0, 64
lb $t3, 11($t0)
N201: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffe
lhu $t2, 10($zero)
N202: la $ra, N291
jr $ra
N203: srl $t1, $t1, 28
addi $t1, $t1, 64
andi $t1, $t1, 0xfffffffc
lw $t0, 8($t1)
N204: srlv $zero, $zero, $zero
N205: blez $t3, N207
N206: sra $zero, $zero, 28
lbu $t2, 70($zero)
N207: ori $t0, $zero, 37979
N208: andi $t2, $zero, 26014
N209: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffc
sw $t1, 0($zero)
N210: sltiu $t0, $t3, 26027
N211: xor $t2, $zero, $zero
N212: bne $t1, $t2, N228
N213: srl $t1, $t1, 28
addi $t1, $t1, 64
andi $t1, $t1, 0xfffffffe
lhu $zero, 6($t1)
N214: multu $zero, $t2
N215: add $t3, $t3, $t2
N216: mtlo $t2
N217: sra $t3, $t3, 28
andi $t3, $t3, 0xfffffffc
sw $t3, 64($t3)
N218: slti $zero, $zero, 28363
N219: srl $t3, $t3, 28
addi $t3, $t3, 64
lb $t2, 13($t3)
N220: blez $t3, N223
N221: add $zero, $zero, $t1
N222: ori $t0, $t1, 36736
N223: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffe
lhu $t3, 2($zero)
N224: addu $t3, $t2, $zero
N225: sltu $t0, $t3, $zero
N226: bgtz $t0, N246
N227: mthi $zero
N228: la $ra, N286
jr $ra
N229: ori $t2, $t2, 1
divu $t2, $t2
N230: sra $t0, $t0, 28
lb $t3, 78($t0)
N231: andi $t2, $t2, 52942
N232: nor $zero, $t1, $t1
N233: srl $t1, $t1, 28
addi $t1, $t1, 64
sb $zero, 5($t1)
N234: slti $t0, $t1, 22549
N235: j N264
N236: sra $zero, $zero, 28
andi $zero, $zero, 0xfffffffe
lhu $zero, 70($zero)
N237: srl $t0, $t0, 28
addi $t0, $t0, 64
andi $t0, $t0, 0xfffffffc
sw $t1, 4($t0)
N238: ori $t3, $t3, 1
div $t3, $t3
N239: bltz $t2, N242
N240: nor $zero, $t0, $t1
N241: bltz $t1, N294
N242: xori $t0, $t1, 37330
N243: and $t2, $t1, $zero
N244: sllv $t2, $t1, $t2
N245: xori $t2, $t3, 49069
N246: xori $zero, $t2, 27235
N247: mflo $t3
N248: srl $t3, $t3, 20
N249: sra $t3, $t3, 28
andi $t3, $t3, 0xfffffffc
sw $t3, 64($t3)
N250: srl $t2, $t2, 28
addi $t2, $t2, 64
andi $t2, $t2, 0xfffffffc
sw $t0, 0($t2)
N251: sra $zero, $zero, 28
sb $t1, 64($zero)
N252: multu $t3, $t0
N253: j N283
N254: slt $t3, $t1, $t1
N255: slti $t3, $zero, -16323
N256: slti $zero, $t3, -10831
N257: ori $t1, $t1, 59911
N258: ori $t0, $t0, 37111
N259: mult $zero, $t2
N260: mtlo $t0
N261: srl $t1, $t1, 28
addi $t1, $t1, 64
andi $t1, $t1, 0xfffffffe
lh $t1, 0($t1)
N262: slt $t2, $t2, $t1
N263: sra $t0, $t0, 28
andi $t0, $t0, 0xfffffffe
lh $t2, 64($t0)
N264: sll $zero, $t1, 14
N265: la $ra, N270
jr $ra
N266: and $t0, $zero, $t3
N267: mthi $t3
N268: or $t1, $zero, $zero
N269: la $ra, N274
jalr $t3, $ra
N270: mfhi $t3
N271: sra $zero, $zero, 28
andi $zero, $zero, 0xfffffffc
sw $t3, 76($zero)
N272: jal N300
N273: mtlo $t1
N274: srl $t1, $t1, 28
addi $t1, $t1, 64
lb $t3, 0($t1)
N275: subu $zero, $t3, $t1
N276: sra $zero, $t3, 26
N277: addiu $zero, $t0, 2101
N278: sllv $t0, $t2, $t0
N279: xor $t3, $t2, $t3
N280: srl $t0, $t0, 28
addi $t0, $t0, 64
andi $t0, $t0, 0xfffffffe
sh $t1, 14($t0)
N281: sra $zero, $zero, 28
sb $t1, 78($zero)
N282: sll $zero, $t1, 23
N283: srl $t2, $t2, 28
addi $t2, $t2, 64
andi $t2, $t2, 0xfffffffc
lw $t0, 0($t2)
N284: or $t2, $zero, $t1
N285: ori $t3, $t3, 1
divu $t2, $t3
N286: xori $t2, $t0, 34731
N287: xor $t2, $t2, $t0
N288: sltu $t3, $zero, $t1
N289: xor $t1, $t3, $t0
N290: ori $t1, $t1, 1
div $t0, $t1
N291: subu $t2, $t1, $zero
N292: bltz $t3, N294
N293: sra $t0, $t0, 28
sb $zero, 64($t0)
N294: jal N296
N295: sra $t0, $zero, 7
N296: sltiu $t2, $zero, 21893
N297: la $ra, EXIT
jr $ra
N298: nor $t0, $t0, $t3
N299: slt $t2, $t0, $t1
N300: nop
EXIT:
beq $zero, $zero, EXIT
nop
