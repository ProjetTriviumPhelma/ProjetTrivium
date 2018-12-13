# keyGenerator
import fileinput
import sys

file_name = "../cryptoProc/keyGenerator.vhd"

def fill_keyGenerator(m):
	#generateur de cle depend de m
	if m == 2: 
		file = open('./blocs/keyGenerator_m2.txt', 'r')
		architecture = file.read()
		file.close()
	elif m == 3:
		file = open('./blocs/keyGenerator_m3.txt', 'r')
		architecture = file.read()
		file.close()
	elif m == 4:
		file = open('./blocs/keyGenerator_m4.txt', 'r')
		architecture = file.read()
		file.close()
	else :
		raise ValueError('m out of range (must be between 2 and 4)')

	#remplissage
	for line in fileinput.FileInput(file_name, inplace =1):		
		if '#keyGenerator_architecture#' in line:
			line = line.replace('#keyGenerator_architecture#',architecture)
		print line,
		
if __name__ == '__main__':
	fill_keyGenerator(int(sys.argv[1]))
			
			 
