# block cipher
import fileinput
import sys

file_name = "../cryptoProc/cipher.vhd"

def fill_cipher(p,opt):
	#recherche des port et process approprie 
	if (p == 'c') or (p=='cd'):		#chiffrement seul ou chiffrement/dechiffrement
		if (p == 'c') and (opt == 'r'):		#chiffrement avec rechargement de la cle
			file = open('./blocs/cipher_C_recharge.txt', 'r')
			port = file.read()
			file.close()
			
			file = open('./blocs/cipher_process_C_recharge.txt', 'r')
			process = file.read()
			file.close() 
		else :					#chiffrement/dechiffrement ou chiffrement avec meme cle
			file = open('./blocs/cipher_mux.txt', 'r')
			port = file.read()
			file.close()
			
			file = open('./blocs/cipher_process_mux.txt', 'r')
			process = file.read()
			file.close()
	elif p == 'd':				#dechiffrement seul
		file = open('./blocs/cipher_D.txt', 'r')
		port = file.read()
		file.close()
		
		file = open('./blocs/cipher_process_D.txt', 'r')
		process = file.read()
		file.close() 

	#remplissage du fichier cipher.vhd
	for line in fileinput.FileInput(file_name, inplace =1):		
		if '#cipherPort#' in line:
			line = line.replace('#cipherPort#',port)
		elif '#cipherProcess#' in line:
			line = line.replace('#cipherProcess#',process)
		print line,

if __name__ == '__main__':
	fill_cipher(int(sys.argv[1]),int(sys.argv[2]))




