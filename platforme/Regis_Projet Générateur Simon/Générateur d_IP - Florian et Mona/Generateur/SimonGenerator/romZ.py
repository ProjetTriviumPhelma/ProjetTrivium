# romZ
import fileinput
import sys

file_name = "../cryptoProc/romZ.vhd"

def fill_romZ(z_index):
	#recherche du z correspondant a z_index determine dans constant.py
	if z_index == 0: 
		file = open('./blocs/romZ_z0.txt', 'r')
		z = file.read()
		file.close()
	elif z_index == 1:
		file = open('./blocs/romZ_z1.txt', 'r')
		z = file.read()
		file.close()
	elif z_index == 2:
		file = open('./blocs/romZ_z2.txt', 'r')
		z = file.read()
		file.close()
	elif z_index == 3:
		file = open('./blocs/romZ_z3.txt', 'r')
		z = file.read()
		file.close()
	elif z_index == 4:
		file = open('./blocs/romZ_z4.txt', 'r')
		z = file.read()
		file.close()
	else :
		raise ValueError('z_index out of range (must be between 0 and 4)')
	
	#remplassement
	for line in fileinput.FileInput(file_name, inplace =1):
		if '#romz#' in line:
			line = line.replace('#romz#',z)
		print line,


if __name__ == '__main__':
	fill_romZ(int(sys.argv[1]))




