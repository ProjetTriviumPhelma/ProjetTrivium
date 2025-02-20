# constants

import fileinput

file_name = "../cryptoProc/constants.vhd"

def fill_constants(block_size, key_size):
	#recherche du nombre de ronde et du z approprie (cf tableau)
	if block_size == 32 and key_size == 64:
		z_index = 0
		T = 32
	elif block_size == 48:
		
		if key_size == 72:	
			z_index = 0
			T = 36
		elif key_size == 96:
			z_index = 1
			T = 36
	elif block_size == 64:
		if key_size == 96:	
			z_index = 2
			T = 42
		elif key_size == 128:	
			z_index = 3
			T = 44
	elif block_size == 96:
		if key_size == 96:	
			z_index = 2
			T = 52
		elif key_size == 144:	
			z_index = 3
			T = 54
	elif block_size == 128:
		if key_size == 128:	
			z_index = 2
			T = 68
		elif key_size == 192:	
			z_index = 3
			T = 69
		elif key_size == 256:	
			z_index = 4
			T = 72
	else :
		raise ValueError('impossible couple ' + block_size +'/' + key_size)

	
	# calcul de Tbit
	Tbit = 0
	i = T
	while(i > 1):
    		i = i >> 1
   		Tbit += 1
	
	#calcul des autres constantes
	N = block_size/2
	m = key_size / N


	#remplissage du fichier constants.vhd
	for line in fileinput.FileInput(file_name, inplace =1):		
		if '#N#' in line:
			line = line.replace('#N#',str(N))
		elif '#Tbit#' in line:
			line = line.replace('#Tbit#',str(Tbit))
		elif '#T#' in line:
			line = line.replace('#T#',str(T))
		elif '#NM#' in line:
			line = line.replace('#NM#',str(key_size))

		print line,

	return (z_index, m, T)

if __name__ == '__main__':
	fill_constants()
