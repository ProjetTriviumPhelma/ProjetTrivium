# msgRegister
import fileinput
import sys

file_name = "../cryptoProc/msgRegister.vhd"

def fill_msgRegister(p,opt):

	if p == 'c': # chiffrement uniquement
		file = open('./blocs/msgRegister_port_C.txt', 'r')
		port = file.read()
		file.close()
	
		file = open('./blocs/msgRegister_regout_C.txt', 'r')
		regout = file.read()
		file.close()
	else :
		file = open('./blocs/msgRegister_port_DCD.txt', 'r')
		port = file.read()
		file.close()
	
		file = open('./blocs/msgRegister_regout_DCD.txt', 'r')
		regout = file.read()
		file.close()

	#remplissage
	for line in fileinput.FileInput(file_name, inplace =1):		
		if '#msgRegisterport#' in line:
			line = line.replace('#msgRegisterport#',port)
		elif '#regout#' in line:
			line = line.replace('#regout#',regout)
		print line,

if __name__ == '__main__':
	fill_msgRegister(int(sys.argv[1]),int(sys.argv[2]))