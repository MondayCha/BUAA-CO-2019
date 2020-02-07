from random import choice, randint

instr = 300

ins_set = [
	('r', 'addu {0}, {1}, {2}', 'reg', 'reg', 'reg'),
	('r', 'subu {0}, {1}, {2}', 'reg', 'reg', 'reg'),
	('i', 'ori {0}, {1}, {2}', 'reg', 'reg', 'imm16'),
	('i', 'lui {0}, {1}', 'reg', 'imm16'),
	('i', 'lw {0}, {1}+{2}', 'reg', 'daddr', 'offset'),
	('i', 'sw {0}, {1}+{2}', 'reg', 'daddr', 'offset'),
	# ('b', 'beq {0}, {1}, {2}', 'reg', 'reg', 'taddr'),
	# ('j', 'j {0}', 'taddr'),
	# ('j', 'jal {0}', 'taddr'),
	# ('j', 'la $ra, {0}\njr $ra', 'taddr'),
	# ('j', 'la {1}, {0}\njr {1}', 'taddr', 'reg_no_zero'),
	# ('i', 'addi {0}, {1}, {2}', 'reg', 'reg', 'simm16'),
	# ('n', 'nop'),
]

reg_set = [
	'$zero',
	'$t0', '$t1', '$t2', '$t3',
	'$s0', '$s1', '$s2', '$s3',
	'$a0', '$v0'
]

ds_set = [
	'arr1', 'arr2'
]

ts_set = ['N%d' % i for i in range(instr + 1)] + ['EXIT']

rand_func = {
	'reg': lambda line: choice(reg_set),
	'reg_no_zero': lambda line: choice(reg_set[1:]),
	'imm16': lambda line: randint(0, 2 ** 16 - 1),
	'simm16': lambda line: randint(- 2 ** 15, 2 ** 15 - 1),
	'offset': lambda line: randint(0, 2 ** 2 - 1) * 4,
	'taddr': lambda line: ts_set[randint(line + 2, instr + 1)],
	'daddr': lambda line: choice(ds_set),
}

print('''
.data
arr1: .space 64
arr2: .space 64
''')

print('''
.text
''')

prev = ''
for i in range(instr):
	u = choice(ins_set)
	while u[0] in 'bj' and prev in 'bj':
		u = choice(ins_set)
	prev = u[0]
	if len(u) <= 2:
		ins = u[1]
	else:
		ins, arg = u[1], u[2:]
		ins = ins.format(*map(lambda x: rand_func[x](i), arg))
	print('%s: %s' % (ts_set[i], ins))

print('%s: nop' % ts_set[instr])
print('%s:' % ts_set[-1])
