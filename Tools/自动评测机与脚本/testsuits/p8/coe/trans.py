uml = 1120

with open('code.txt') as f:
	um = list(map(str.strip, f.readlines()))
um.extend(['00000000'] * (uml - len(um)))
with open('code_handler.txt') as f:
	um.extend(map(str.strip, f.readlines()))

print('memory_initialization_radix=16;')
print('memory_initialization_vector=')

for i in um[:-1]:
	print('%s,' % i)
print('%s;' % um[-1])
