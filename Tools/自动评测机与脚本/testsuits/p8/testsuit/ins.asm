
.data
.space 64
arr1: .space 64
arr2: .space 64
.space 64


.text

N0: ori $t0, $t3, 61416
N1: jal N32
N2: srav $t1, $t0, $t1
N3: sra $zero, $zero, 28
lb $zero, 66($zero)
N4: la $ra, N127
jr $ra
N5: sra $t0, $t0, 15
N6: sltiu $t3, $t2, 22665
N7: sra $t1, $t2, 11
N8: addu $zero, $t0, $zero
N9: srl $t1, $t1, 28
addi $t1, $t1, 64
andi $t1, $t1, 0xfffffffc
sw $t3, 12($t1)
N10: slti $t3, $zero, -2643
N11: sra $t0, $t0, 28
andi $t0, $t0, 0xfffffffe
sh $zero, 76($t0)
N12: nop
N13: srl $t3, $t3, 28
addi $t3, $t3, 64
lb $t3, 4($t3)
N14: jal N285
N15: addi $zero, $zero, 32081
N16: sub $t2, $t0, $t2
N17: or $t2, $zero, $t3
N18: addu $t1, $t0, $zero
N19: sub $t0, $t3, $t0
N20: srl $t2, $t2, 28
addi $t2, $t2, 64
lb $zero, 9($t2)
N21: add $t2, $t0, $t1
N22: sra $t0, $t0, 28
andi $t0, $t0, 0xfffffffe
sh $t0, 68($t0)
N23: la $ra, N309
jalr $zero, $ra
N24: xor $t2, $t1, $t2
N25: srl $t0, $t0, 28
addi $t0, $t0, 64
lbu $t0, 5($t0)
N26: sra $t0, $t3, 22
N27: srl $t0, $t0, 28
addi $t0, $t0, 64
andi $t0, $t0, 0xfffffffe
sh $t0, 12($t0)
N28: la $ra, N252
jr $ra
N29: sra $t0, $t0, 28
andi $t0, $t0, 0xfffffffc
lw $t2, 64($t0)
N30: sra $t3, $t3, 28
lb $t3, 76($t3)
N31: bgtz $t3, N179
N32: slt $t3, $t0, $t0
N33: slt $t0, $t2, $zero
N34: slti $t0, $t2, 30139
N35: srl $t1, $t1, 28
addi $t1, $t1, 64
andi $t1, $t1, 0xfffffffe
sh $t2, 6($t1)
N36: nor $zero, $t0, $t2
N37: sra $t3, $t3, 28
andi $t3, $t3, 0xfffffffc
sw $t1, 64($t3)
N38: nop
N39: sll $t1, $t1, 20
N40: addiu $t2, $t1, 48794
N41: srav $t3, $t3, $t2
N42: srl $t0, $t0, 28
addi $t0, $t0, 64
lb $t0, 12($t0)
N43: jal N330
N44: nop
N45: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffc
sw $zero, 12($zero)
N46: srl $t0, $t0, 28
addi $t0, $t0, 64
andi $t0, $t0, 0xfffffffc
sw $t3, 12($t0)
N47: nor $t0, $t3, $t2
N48: beq $t1, $t3, N204
N49: srl $t3, $t3, 28
addi $t3, $t3, 64
andi $t3, $t3, 0xfffffffc
lw $t1, 0($t3)
N50: sra $zero, $zero, 28
andi $zero, $zero, 0xfffffffe
lhu $zero, 66($zero)
N51: bgez $t0, N190
N52: slti $zero, $t3, -28355
N53: sllv $t0, $t2, $t1
N54: srl $t2, $t2, 28
addi $t2, $t2, 64
andi $t2, $t2, 0xfffffffe
lhu $t0, 4($t2)
N55: srl $t2, $t2, 28
addi $t2, $t2, 64
andi $t2, $t2, 0xfffffffe
lhu $t3, 12($t2)
N56: sub $t0, $t2, $t2
N57: addu $t2, $t3, $t3
N58: sllv $t0, $t1, $t3
N59: slti $t2, $t0, 15778
N60: lui $t0, 27382
N61: sll $t0, $t3, 24
N62: sra $t1, $t1, 28
andi $t1, $t1, 0xfffffffe
sh $t3, 66($t1)
N63: addiu $zero, $t1, 56870
N64: or $t0, $t2, $t3
N65: ori $t0, $t1, 43716
N66: xor $t1, $t3, $t1
N67: bgtz $t0, N265
N68: xori $t3, $t1, 61581
N69: ori $t3, $t3, 35705
N70: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffe
sh $t0, 0($zero)
N71: srl $t0, $t0, 28
addi $t0, $t0, 64
andi $t0, $t0, 0xfffffffe
sh $t2, 12($t0)
N72: sra $t2, $t2, 28
andi $t2, $t2, 0xfffffffe
sh $zero, 68($t2)
N73: sra $t1, $t3, 31
N74: sll $t1, $t3, 15
N75: sra $t0, $t0, 28
lb $zero, 76($t0)
N76: sra $zero, $zero, 28
andi $zero, $zero, 0xfffffffe
lhu $zero, 72($zero)
N77: srl $t0, $t0, 28
addi $t0, $t0, 64
andi $t0, $t0, 0xfffffffe
sh $zero, 8($t0)
N78: jal N474
N79: lui $t0, 59934
N80: sll $t2, $t0, 8
N81: xori $t2, $zero, 3797
N82: jal N316
N83: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffe
sh $t0, 14($zero)
N84: sltiu $t1, $t0, -29431
N85: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffc
sw $t3, 0($zero)
N86: slti $t1, $t0, 7715
N87: srav $t3, $t0, $t1
N88: bgtz $t3, N212
N89: addu $t0, $t3, $t3
N90: srav $zero, $t2, $t0
N91: sra $t0, $t0, 28
andi $t0, $t0, 0xfffffffc
lw $zero, 76($t0)
N92: srl $t1, $t1, 28
addi $t1, $t1, 64
andi $t1, $t1, 0xfffffffc
sw $t2, 12($t1)
N93: sllv $t1, $t2, $t1
N94: jal N440
N95: addu $t2, $t0, $t3
N96: sllv $t0, $zero, $t0
N97: and $t0, $zero, $zero
N98: slti $t0, $t1, 4909
N99: nor $t3, $t0, $t1
N100: jal N401
N101: sra $t1, $t1, 28
andi $t1, $t1, 0xfffffffc
lw $t1, 76($t1)
N102: sra $t0, $t0, 28
andi $t0, $t0, 0xfffffffc
lw $t3, 76($t0)
N103: slt $zero, $zero, $t0
N104: sll $t0, $t0, 19
N105: la $ra, N115
jr $ra
N106: srlv $t3, $t0, $t3
N107: andi $t2, $zero, 61573
N108: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffe
sh $t1, 8($zero)
N109: srl $t3, $t3, 28
addi $t3, $t3, 64
lb $t1, 0($t3)
N110: ori $t2, $t3, 63352
N111: add $zero, $t3, $t0
N112: jal N115
N113: srl $t1, $t1, 8
N114: subu $zero, $t0, $t3
N115: srl $t3, $t3, 28
addi $t3, $t3, 64
andi $t3, $t3, 0xfffffffe
sh $t3, 0($t3)
N116: nop
N117: sra $t3, $t3, 28
andi $t3, $t3, 0xfffffffe
sh $t3, 64($t3)
N118: andi $t2, $t3, 137
N119: addu $zero, $t0, $zero
N120: srl $t1, $zero, 26
N121: la $ra, N456
jr $ra
N122: ori $t0, $zero, 21733
N123: sltiu $t1, $t1, 683
N124: srl $t1, $t1, 28
addi $t1, $t1, 64
lbu $t3, 1($t1)
N125: srl $t1, $t1, 28
addi $t1, $t1, 64
lb $t1, 9($t1)
N126: srlv $t3, $t0, $t0
N127: andi $t3, $t3, 30075
N128: and $t0, $t0, $t0
N129: addu $t3, $t1, $zero
N130: sra $t1, $t1, 28
andi $t1, $t1, 0xfffffffe
lh $zero, 64($t1)
N131: nor $t2, $zero, $t1
N132: srl $t0, $t0, 28
addi $t0, $t0, 64
andi $t0, $t0, 0xfffffffc
sw $t0, 0($t0)
N133: bgez $t1, N441
N134: xor $t1, $t2, $t2
N135: sra $t3, $t3, 28
andi $t3, $t3, 0xfffffffe
sh $t3, 76($t3)
N136: addu $t1, $t2, $t0
N137: sra $zero, $zero, 28
lb $t3, 72($zero)
N138: addiu $t2, $t1, 31677
N139: xori $zero, $t0, 20049
N140: srl $t0, $t0, 28
addi $t0, $t0, 64
lb $t3, 15($t0)
N141: sra $t1, $t1, 28
sb $t1, 65($t1)
N142: srl $t2, $t2, 28
addi $t2, $t2, 64
lb $t0, 11($t2)
N143: srl $t0, $t0, 28
addi $t0, $t0, 64
andi $t0, $t0, 0xfffffffc
sw $t0, 4($t0)
N144: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffe
lhu $t2, 14($zero)
N145: bne $t2, $t1, N245
N146: srl $t2, $t2, 28
addi $t2, $t2, 64
andi $t2, $t2, 0xfffffffe
lh $t3, 8($t2)
N147: srl $t3, $t3, 28
addi $t3, $t3, 64
sb $t1, 14($t3)
N148: srav $t2, $t3, $zero
N149: jal N440
N150: sltu $zero, $zero, $t2
N151: sra $t3, $t3, 28
andi $t3, $t3, 0xfffffffe
sh $t1, 68($t3)
N152: add $t0, $t1, $zero
N153: la $ra, N183
jr $ra
N154: sllv $t1, $zero, $zero
N155: jal N319
N156: sra $zero, $zero, 28
andi $zero, $zero, 0xfffffffc
sw $t1, 64($zero)
N157: and $t1, $t0, $t1
N158: j N480
N159: sra $t3, $t3, 28
andi $t3, $t3, 0xfffffffe
sh $t2, 72($t3)
N160: lui $t1, 49063
N161: blez $t0, N304
N162: add $t3, $zero, $t3
N163: sltiu $zero, $t3, -26332
N164: addu $t2, $zero, $t0
N165: sra $t2, $zero, 10
N166: subu $t0, $t1, $zero
N167: bne $t2, $t3, N424
N168: addi $zero, $t2, -21152
N169: srl $t3, $t3, 28
addi $t3, $t3, 64
andi $t3, $t3, 0xfffffffe
sh $zero, 8($t3)
N170: subu $t3, $t2, $zero
N171: j N362
N172: slt $t0, $t0, $t0
N173: sltiu $t1, $zero, -31816
N174: sra $t2, $t3, 25
N175: slti $t1, $zero, 32329
N176: srl $t3, $t3, 28
addi $t3, $t3, 64
andi $t3, $t3, 0xfffffffc
sw $t1, 0($t3)
N177: nop
N178: srl $t0, $t0, 28
addi $t0, $t0, 64
sb $t3, 7($t0)
N179: la $ra, N249
jalr $t2, $ra
N180: addi $t1, $t3, -25509
N181: sra $t1, $t1, 28
sb $zero, 71($t1)
N182: nop
N183: sll $t2, $t1, 3
N184: jal N472
N185: srl $t1, $t0, 25
N186: xor $t1, $t3, $t1
N187: jal N471
N188: xori $t1, $zero, 641
N189: and $t0, $t3, $t1
N190: srl $t0, $t0, 28
addi $t0, $t0, 64
lbu $t3, 9($t0)
N191: sub $t2, $zero, $t0
N192: sra $zero, $zero, 28
andi $zero, $zero, 0xfffffffe
sh $t1, 64($zero)
N193: srlv $t2, $t3, $t3
N194: and $t1, $t0, $zero
N195: and $t0, $t3, $t2
N196: srlv $t3, $zero, $t0
N197: srlv $t2, $t1, $t0
N198: srl $t1, $t1, 28
addi $t1, $t1, 64
andi $t1, $t1, 0xfffffffe
lh $zero, 12($t1)
N199: sra $t1, $t1, 28
lbu $t0, 76($t1)
N200: bne $t0, $t3, N328
N201: addi $t2, $t0, -13575
N202: and $zero, $zero, $t0
N203: ori $t0, $zero, 64022
N204: sll $t1, $zero, 12
N205: sll $t2, $t3, 10
N206: sll $t2, $t2, 31
N207: srl $t1, $t1, 28
addi $t1, $t1, 64
andi $t1, $t1, 0xfffffffe
lhu $t3, 2($t1)
N208: add $t3, $t0, $t2
N209: bltz $t0, N367
N210: addi $t2, $t1, -4140
N211: addi $t1, $t2, -16909
N212: la $t1, N328
jr $t1
N213: addu $t3, $t0, $t3
N214: la $t0, N349
jr $t0
N215: add $t2, $t3, $zero
N216: nor $zero, $t2, $t1
N217: bgtz $zero, N286
N218: srl $t2, $t2, 28
addi $t2, $t2, 64
andi $t2, $t2, 0xfffffffe
lhu $t1, 12($t2)
N219: xori $zero, $t0, 28558
N220: sra $t2, $t2, 28
lbu $t3, 79($t2)
N221: nop
N222: la $t1, N239
jr $t1
N223: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffc
sw $t0, 12($zero)
N224: sra $t2, $t2, 28
andi $t2, $t2, 0xfffffffe
lhu $t1, 66($t2)
N225: sra $t0, $t0, 28
sb $t0, 64($t0)
N226: srl $t3, $t3, 28
addi $t3, $t3, 64
andi $t3, $t3, 0xfffffffe
lhu $t1, 6($t3)
N227: la $ra, N248
jalr $t1, $ra
N228: sra $t2, $t2, 28
andi $t2, $t2, 0xfffffffc
lw $t0, 68($t2)
N229: sltiu $t0, $t3, 11665
N230: sltiu $t0, $t0, 9937
N231: addu $t3, $t1, $t1
N232: nor $t3, $zero, $t2
N233: blez $t2, N442
N234: sltiu $zero, $zero, 30595
N235: sra $t1, $t1, 28
andi $t1, $t1, 0xfffffffe
lh $t1, 70($t1)
N236: add $zero, $t2, $t3
N237: sra $zero, $zero, 28
lbu $zero, 65($zero)
N238: addu $t2, $t0, $t3
N239: slti $t1, $t3, 13341
N240: sra $t1, $t1, 28
andi $t1, $t1, 0xfffffffc
lw $t1, 64($t1)
N241: sltiu $zero, $t3, -30379
N242: sub $zero, $t0, $t2
N243: bgez $zero, N461
N244: sra $t3, $t3, 28
andi $t3, $t3, 0xfffffffe
lhu $t2, 70($t3)
N245: j N407
N246: sra $zero, $zero, 28
andi $zero, $zero, 0xfffffffe
lhu $t1, 74($zero)
N247: slti $t3, $t1, 32593
N248: xor $t3, $t1, $t1
N249: srl $t0, $t0, 28
addi $t0, $t0, 64
andi $t0, $t0, 0xfffffffc
sw $t1, 8($t0)
N250: srl $t2, $t2, 28
addi $t2, $t2, 64
andi $t2, $t2, 0xfffffffe
sh $t0, 10($t2)
N251: sra $zero, $zero, 28
lbu $t1, 72($zero)
N252: srl $t3, $zero, 10
N253: or $t2, $t2, $t3
N254: sltiu $t2, $zero, 3808
N255: srav $t2, $zero, $t3
N256: andi $t2, $t1, 58373
N257: andi $zero, $t1, 4159
N258: beq $t3, $t1, N301
N259: sltu $t3, $t2, $t0
N260: subu $t3, $t3, $zero
N261: xor $t2, $t3, $t0
N262: srl $zero, $zero, 28
addi $zero, $zero, 64
sb $t3, 4($zero)
N263: addu $zero, $t1, $t2
N264: and $t0, $t0, $t1
N265: bltz $t2, N404
N266: sra $zero, $zero, 28
lbu $zero, 69($zero)
N267: addi $t3, $t0, -2635
N268: sra $zero, $zero, 28
andi $zero, $zero, 0xfffffffe
sh $t2, 72($zero)
N269: srl $t1, $t1, 28
addi $t1, $t1, 64
andi $t1, $t1, 0xfffffffc
sw $t2, 8($t1)
N270: lui $t2, 11137
N271: sllv $t3, $t1, $t1
N272: blez $zero, N488
N273: srav $t1, $t2, $t2
N274: srl $t1, $t1, 28
addi $t1, $t1, 64
lbu $t0, 7($t1)
N275: srlv $zero, $t1, $t1
N276: sra $zero, $zero, 28
lbu $t0, 76($zero)
N277: bgtz $t0, N454
N278: addu $t0, $t1, $zero
N279: jal N331
N280: srav $t0, $zero, $zero
N281: srl $t3, $t3, 28
addi $t3, $t3, 64
andi $t3, $t3, 0xfffffffc
sw $t2, 0($t3)
N282: beq $zero, $t2, N436
N283: ori $zero, $t1, 25047
N284: bne $t1, $t0, N434
N285: sllv $t1, $t0, $zero
N286: srl $zero, $zero, 28
addi $zero, $zero, 64
sb $t2, 13($zero)
N287: sra $t3, $t3, 28
andi $t3, $t3, 0xfffffffc
sw $t2, 64($t3)
N288: srl $t3, $t3, 28
addi $t3, $t3, 64
lbu $t1, 8($t3)
N289: andi $zero, $t3, 27749
N290: bne $t2, $t3, N389
N291: nop
N292: beq $t0, $t1, N295
N293: nop
N294: sra $t0, $t0, 28
andi $t0, $t0, 0xfffffffc
sw $t2, 68($t0)
N295: la $ra, N323
jr $ra
N296: add $t2, $t1, $t2
N297: la $t2, N306
jr $t2
N298: srav $t1, $zero, $zero
N299: addu $zero, $t1, $t1
N300: ori $t1, $zero, 34488
N301: slt $t2, $t3, $zero
N302: nor $t1, $t2, $t3
N303: srl $t3, $t3, 28
addi $t3, $t3, 64
sb $t3, 3($t3)
N304: sllv $zero, $t2, $zero
N305: bgez $zero, N486
N306: sllv $t0, $t1, $t2
N307: slt $t1, $t0, $t2
N308: addu $t0, $t3, $t0
N309: andi $t2, $t1, 29089
N310: sra $t1, $t1, 28
andi $t1, $t1, 0xfffffffc
lw $zero, 72($t1)
N311: sra $t1, $t3, 14
N312: sll $t2, $t2, 8
N313: sra $zero, $zero, 28
andi $zero, $zero, 0xfffffffe
lhu $t0, 64($zero)
N314: or $zero, $t3, $zero
N315: sllv $t0, $zero, $t3
N316: and $t1, $zero, $t1
N317: addu $t2, $t2, $zero
N318: srl $t2, $t2, 28
addi $t2, $t2, 64
lbu $zero, 6($t2)
N319: subu $t3, $zero, $t3
N320: xor $t0, $t1, $t2
N321: srlv $t0, $t3, $t0
N322: sra $t0, $t0, 28
sb $t2, 67($t0)
N323: srl $t3, $t3, 28
addi $t3, $t3, 64
lb $t3, 15($t3)
N324: andi $t2, $t0, 36094
N325: nor $t0, $t1, $zero
N326: and $zero, $zero, $t2
N327: addiu $t3, $t2, 18213
N328: srlv $t3, $t0, $t0
N329: addi $t1, $zero, 14302
N330: addiu $t3, $zero, 17701
N331: sltu $zero, $t0, $t1
N332: sll $zero, $t3, 13
N333: sra $zero, $zero, 28
andi $zero, $zero, 0xfffffffe
lh $t3, 76($zero)
N334: sra $zero, $zero, 28
lbu $t3, 70($zero)
N335: srl $t3, $t3, 28
addi $t3, $t3, 64
andi $t3, $t3, 0xfffffffc
lw $t3, 4($t3)
N336: srl $t2, $t2, 28
addi $t2, $t2, 64
lbu $t3, 4($t2)
N337: or $zero, $t2, $t2
N338: slti $zero, $t0, 15022
N339: la $ra, N402
jr $ra
N340: xori $t0, $t2, 41213
N341: beq $t3, $t0, N462
N342: srav $t1, $t0, $zero
N343: srl $t1, $t1, 28
addi $t1, $t1, 64
lb $t2, 1($t1)
N344: sll $zero, $t3, 3
N345: beq $t1, $t1, N462
N346: srl $t1, $t1, 28
addi $t1, $t1, 64
andi $t1, $t1, 0xfffffffe
lhu $t2, 0($t1)
N347: andi $t2, $t0, 54683
N348: addi $t1, $zero, 23604
N349: sltu $zero, $t2, $t0
N350: subu $zero, $zero, $t1
N351: j N385
N352: lui $t3, 31573
N353: bgtz $t2, N368
N354: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffe
lhu $t1, 2($zero)
N355: sra $t0, $t2, 15
N356: and $t2, $t0, $t3
N357: srl $t2, $t2, 28
addi $t2, $t2, 64
andi $t2, $t2, 0xfffffffe
lh $t0, 0($t2)
N358: srl $t1, $t1, 28
addi $t1, $t1, 64
lbu $t2, 13($t1)
N359: sra $t2, $t2, 28
sb $t2, 79($t2)
N360: nor $t2, $t1, $t1
N361: sltiu $t2, $zero, -11776
N362: subu $zero, $zero, $t1
N363: addi $zero, $t0, -16612
N364: jal N422
N365: sra $t0, $t0, 28
andi $t0, $t0, 0xfffffffe
sh $t1, 78($t0)
N366: ori $t3, $t3, 14364
N367: sra $t1, $t1, 28
andi $t1, $t1, 0xfffffffc
sw $zero, 64($t1)
N368: and $t0, $t0, $t3
N369: srav $zero, $zero, $zero
N370: jal N490
N371: sll $zero, $t1, 15
N372: srav $zero, $t2, $t2
N373: la $t1, N420
jr $t1
N374: sra $zero, $zero, 28
andi $zero, $zero, 0xfffffffc
sw $t3, 68($zero)
N375: slt $t0, $t0, $t2
N376: la $ra, N477
jalr $t1, $ra
N377: srl $t3, $t3, 28
addi $t3, $t3, 64
andi $t3, $t3, 0xfffffffe
sh $zero, 6($t3)
N378: sra $t2, $t2, 28
lb $t1, 66($t2)
N379: srav $t3, $t0, $t0
N380: srl $t2, $t2, 28
addi $t2, $t2, 64
sb $t0, 14($t2)
N381: la $ra, N388
jr $ra
N382: add $t3, $t0, $t0
N383: sllv $zero, $zero, $zero
N384: lui $t2, 59718
N385: sltiu $t2, $t3, -21732
N386: or $t2, $t3, $t0
N387: srlv $t3, $t3, $t1
N388: sra $t0, $t0, 28
andi $t0, $t0, 0xfffffffc
lw $zero, 72($t0)
N389: beq $t3, $t0, N405
N390: sub $t0, $t2, $zero
N391: sra $t0, $t0, 28
sb $t0, 71($t0)
N392: or $t3, $t1, $zero
N393: sub $zero, $zero, $t2
N394: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffe
sh $t1, 2($zero)
N395: srl $t2, $t2, 28
addi $t2, $t2, 64
andi $t2, $t2, 0xfffffffe
sh $zero, 8($t2)
N396: srl $t3, $t3, 28
addi $t3, $t3, 64
lbu $t2, 7($t3)
N397: blez $t2, N400
N398: add $zero, $t0, $t3
N399: la $ra, N481
jr $ra
N400: ori $zero, $zero, 42204
N401: la $t0, N492
jr $t0
N402: addiu $t3, $t3, 9837
N403: srl $t2, $t2, 28
addi $t2, $t2, 64
lbu $zero, 10($t2)
N404: srl $t3, $t3, 28
addi $t3, $t3, 64
andi $t3, $t3, 0xfffffffc
lw $zero, 8($t3)
N405: srl $t2, $t2, 28
addi $t2, $t2, 64
lbu $t0, 13($t2)
N406: sll $zero, $t2, 13
N407: srl $t3, $t3, 28
addi $t3, $t3, 64
andi $t3, $t3, 0xfffffffc
sw $zero, 12($t3)
N408: sra $t1, $t1, 28
lbu $zero, 77($t1)
N409: addu $t1, $zero, $t1
N410: srl $t3, $t3, 28
addi $t3, $t3, 64
andi $t3, $t3, 0xfffffffe
sh $t2, 0($t3)
N411: lui $t1, 63737
N412: bgtz $zero, N417
N413: ori $zero, $t0, 16960
N414: srl $zero, $zero, 28
addi $zero, $zero, 64
lb $zero, 13($zero)
N415: beq $zero, $t3, N440
N416: sltu $t0, $t1, $zero
N417: addu $t3, $t3, $zero
N418: ori $t1, $t1, 19281
N419: nop
N420: ori $t2, $t0, 39596
N421: sra $t2, $t2, 28
andi $t2, $t2, 0xfffffffe
lh $t2, 66($t2)
N422: sra $t2, $t2, 28
andi $t2, $t2, 0xfffffffe
lh $t1, 68($t2)
N423: sra $t0, $t0, 28
andi $t0, $t0, 0xfffffffc
sw $t2, 64($t0)
N424: nop
N425: blez $t2, N487
N426: sllv $t1, $zero, $t0
N427: sltu $zero, $t1, $t3
N428: sltiu $t1, $t2, -9094
N429: sra $t1, $t1, 28
andi $t1, $t1, 0xfffffffe
lhu $zero, 72($t1)
N430: srl $t1, $t1, 28
addi $t1, $t1, 64
andi $t1, $t1, 0xfffffffe
lhu $t0, 10($t1)
N431: sllv $t2, $zero, $zero
N432: nop
N433: addiu $t3, $zero, 25808
N434: sra $t1, $t1, 28
andi $t1, $t1, 0xfffffffc
sw $t0, 72($t1)
N435: la $ra, N467
jr $ra
N436: addi $t2, $t3, -15328
N437: sub $t1, $t2, $t0
N438: nop
N439: j N457
N440: addi $t1, $zero, -7602
N441: sll $zero, $t3, 2
N442: andi $t1, $t2, 11176
N443: nop
N444: addiu $t1, $t1, 37956
N445: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffc
sw $t1, 4($zero)
N446: or $t2, $t3, $t0
N447: srl $zero, $zero, 28
addi $zero, $zero, 64
andi $zero, $zero, 0xfffffffc
sw $zero, 0($zero)
N448: sra $t2, $t2, 28
lbu $t1, 76($t2)
N449: bgez $zero, N461
N450: sra $t1, $t1, 28
sb $t3, 73($t1)
N451: addi $t0, $t1, 10245
N452: bgtz $zero, N478
N453: xori $zero, $t2, 3744
N454: sra $t1, $t1, 28
sb $t3, 65($t1)
N455: or $t3, $t2, $t3
N456: j N497
N457: sltu $t1, $t1, $t3
N458: sltu $zero, $t1, $t3
N459: addiu $t0, $t3, 52832
N460: sllv $t2, $zero, $t2
N461: sra $t1, $t1, 28
lbu $t3, 71($t1)
N462: sra $t1, $t1, 28
lb $t3, 77($t1)
N463: srav $t2, $zero, $zero
N464: srl $zero, $zero, 28
addi $zero, $zero, 64
lb $t3, 10($zero)
N465: and $t1, $t2, $t2
N466: beq $t2, $t3, N468
N467: srl $t3, $t2, 16
N468: sltiu $t0, $t0, 12165
N469: nop
N470: sra $t3, $t3, 28
lbu $t1, 78($t3)
N471: sra $t0, $t0, 28
andi $t0, $t0, 0xfffffffc
lw $t1, 68($t0)
N472: and $t1, $t1, $t1
N473: srav $t2, $t2, $t0
N474: bgtz $t3, N483
N475: sra $t3, $t3, 28
lb $t1, 79($t3)
N476: srl $t3, $t3, 28
addi $t3, $t3, 64
sb $t3, 6($t3)
N477: srl $t1, $t1, 28
addi $t1, $t1, 64
sb $t3, 0($t1)
N478: srl $t0, $t0, 28
addi $t0, $t0, 64
lbu $t2, 13($t0)
N479: add $t3, $t0, $t2
N480: sra $t1, $t2, 9
N481: sltu $zero, $t2, $t0
N482: nor $t0, $t3, $t3
N483: srl $t0, $zero, 19
N484: sll $t0, $zero, 14
N485: bne $t1, $t3, N487
N486: nor $t0, $t3, $t3
N487: xor $t1, $zero, $t3
N488: la $ra, N499
jr $ra
N489: srl $t1, $t1, 28
addi $t1, $t1, 64
lb $t0, 14($t1)
N490: srl $t2, $t2, 28
addi $t2, $t2, 64
lb $t0, 11($t2)
N491: sll $zero, $t1, 10
N492: j N499
N493: srl $t2, $t2, 28
addi $t2, $t2, 64
andi $t2, $t2, 0xfffffffe
lhu $zero, 10($t2)
N494: sra $t1, $t1, 28
andi $t1, $t1, 0xfffffffe
lhu $t1, 72($t1)
N495: xor $zero, $t2, $t3
N496: la $t2, N500
jr $t2
N497: sra $t2, $t2, 28
andi $t2, $t2, 0xfffffffe
lhu $t2, 70($t2)
N498: xori $t3, $t2, 10947
N499: sllv $t3, $t3, $t2
N500: nop
EXIT:
beq $zero, $zero, EXIT
nop
