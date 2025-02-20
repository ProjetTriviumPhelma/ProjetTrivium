# cryptoProc
import fileinput
import sys

file_name = "../cryptoProc/cryptoProc.vhd"

def fill_cryptoProc(p,opt):
	if p == 'c': # chiffrement uniquement

		file = open('./blocs/msgRegister_port_C.txt', 'r')
		msgRegisterPort = file.read()
		file.close()

		file = open('./blocs/msgRegister_map_port_C.txt', 'r')
		msgRegisterMap = file.read()
		file.close()
	
		switch = ''

		if opt == 'c': #complet / possibilite de garder la meme cle
			file = open('./blocs/cryptoproc_CxorD_complet.txt', 'r')
			crytoProcPort = file.read()
			file.close()
			
			file = open('./blocs/FSM_C_complet.txt', 'r')
			FSMPort = file.read()
			file.close()

			file = open('./blocs/FSM_map_C_complet.txt', 'r')
			FSMmap = file.read()
			file.close()

			file = open('./blocs/cipher_mux.txt', 'r')
			cipherPort = file.read()
			file.close()

			file = open('./blocs/cipher_map_mux.txt', 'r')
			cipherMap = file.read()
			file.close()

			file = open('./blocs/keyMemory.txt', 'r')
			keyMemory = file.read()
			file.close()
			
			ki_mux = "signal ki_mux : std_logic;"
			ki_reg = "signal ki_reg : std_logic_vector(N-1 downto 0);"
			key_address = "signal key_address : std_logic_vector(Tbit downto 0);"
			mem_key = "signal mem_key : std_logic;"
			keyMemory_number = 'U3 : '
			romZ_number = 'U4 : '
			cipher_number = 'U5 : '
			msgRegister_number = 'U6 : '

		else :		#avec rechargement de la cle
			file = open('./blocs/cryptoproc_CxorD_recharge.txt', 'r')
			crytoProcPort = file.read()
			file.close()
			
			file = open('./blocs/FSM_C_recharge.txt', 'r')
			FSMPort = file.read()
			file.close()
			
			file = open('./blocs/FSM_map_C_recharge.txt', 'r')
			FSMmap = file.read()
			file.close()

			file = open('./blocs/cipher_C_recharge.txt', 'r')
			cipherPort = file.read()
			file.close()

			file = open('./blocs/cipher_map_C_recharge.txt', 'r')
			cipherMap = file.read()
			file.close()

			ki_mux = ''
			ki_reg = ''
			key_address = ''
			mem_key = ''
			keyMemory = ''
			keyMemory_number = ''
			romZ_number = 'U3 : '
			cipher_number = 'U4 : '
			msgRegister_number = 'U5 : '
					

	elif p == 'd': # dechiffrement uniquement
		file = open('./blocs/cipher_D.txt', 'r')
		cipherPort = file.read()
		file.close()

		file = open('./blocs/cipher_map_D.txt', 'r')
		cipherMap = file.read()
		file.close()

		file = open('./blocs/msgRegister_port_DCD.txt', 'r')
		msgRegisterPort = file.read()
		file.close()

		file = open('./blocs/msgRegister_map_port_DCD.txt', 'r')
		msgRegisterMap = file.read()
		file.close()
		
		file = open('./blocs/keyMemory.txt', 'r')
		keyMemory = file.read()
		file.close()

		switch = "signal switch : std_logic;"		
		ki_mux = ''
		ki_reg = "signal ki_reg : std_logic_vector(N-1 downto 0);"
		key_address = "signal key_address : std_logic_vector(Tbit downto 0);"
		mem_key = "signal mem_key : std_logic;"	
		keyMemory_number = 'U3 : '
		romZ_number = 'U4 : '
		cipher_number = 'U5 : '
		msgRegister_number = 'U6 : '	

		if opt == 'c': #complet	
			file = open('./blocs/cryptoproc_CxorD_complet.txt', 'r')
			crytoProcPort = file.read()
			file.close()
			
			file = open('./blocs/FSM_D_complet.txt', 'r')
			FSMPort = file.read()
			file.close()

			file = open('./blocs/FSM_map_D_complet.txt', 'r')
			FSMmap = file.read()
			file.close()

		else :		#avec rechargement de la cle
			file = open('./blocs/cryptoproc_CxorD_recharge.txt', 'r')
			crytoProcPort = file.read()
			file.close()
			
			file = open('./blocs/FSM_D_recharge.txt', 'r')
			FSMPort = file.read()
			file.close()

			file = open('./blocs/FSM_map_D_recharge.txt', 'r')
			FSMmap = file.read()
			file.close()

	else : # chiffrement/dechiffrement 
		file = open('./blocs/cipher_mux.txt', 'r')
		cipherPort = file.read()
		file.close()

		file = open('./blocs/cipher_map_mux.txt', 'r')
		cipherMap = file.read()
		file.close()

		file = open('./blocs/msgRegister_port_DCD.txt', 'r')
		msgRegisterPort = file.read()
		file.close()

		file = open('./blocs/msgRegister_map_port_DCD.txt', 'r')
		msgRegisterMap = file.read()
		file.close()

		file = open('./blocs/keyMemory.txt', 'r')
		keyMemory = file.read()
		file.close()
	
		switch = "signal switch : std_logic;"
		ki_mux = "signal ki_mux : std_logic;"	
		ki_reg = "signal ki_reg : std_logic_vector(N-1 downto 0);"
		key_address = "signal key_address : std_logic_vector(Tbit downto 0);"
		mem_key = "signal mem_key : std_logic;"	
		keyMemory_number = 'U3 : '
		romZ_number = 'U4 : '
		cipher_number = 'U5 : '
		msgRegister_number = 'U6 : '

		if opt == 'c': #complet	
			file = open('./blocs/cryptoproc_CD_complet.txt', 'r')
			crytoProcPort = file.read()
			file.close()
			
			file = open('./blocs/FSM_CD_complet.txt', 'r')
			FSMPort = file.read()
			file.close()
			
			file = open('./blocs/FSM_map_CD_complet.txt', 'r')
			FSMmap = file.read()
			file.close()

		else :		#avec rechargement de la cle
			file = open('./blocs/cryptoproc_CD_recharge.txt', 'r')
			crytoProcPort = file.read()
			file.close()
			
			file = open('./blocs/FSM_CD_recharge.txt', 'r')
			FSMPort = file.read()
			file.close()

			file = open('./blocs/FSM_map_CD_recharge.txt', 'r')
			FSMmap = file.read()
			file.close()
	
	#remplissage du fichier cryptoProc.vhd
	for line in fileinput.FileInput(file_name, inplace =1):		
		if '#cryptoProcPort#' in line:
			line = line.replace('#cryptoProcPort#',crytoProcPort)		
		elif '#FSMport#' in line:
			line = line.replace('#FSMport#',FSMPort)
		elif '#cipherPort#' in line:
			line = line.replace('#cipherPort#',cipherPort)
		elif '#msgRegisterPort#' in line:
			line = line.replace('#msgRegisterPort#',msgRegisterPort)
		elif '#switch#' in line:
			line = line.replace('#switch#',switch)
		elif '#mem_key#' in line:
			line = line.replace('#mem_key#',mem_key)
		elif '#key_address#' in line:
			line = line.replace('#key_address#',key_address)
		elif '#ki_reg#' in line:
			line = line.replace('#ki_reg#',ki_reg)
		elif '#ki_mux#' in line:
			line = line.replace('#ki_mux#',ki_mux)
		elif '#FSMmap#' in line:
			line = line.replace('#FSMmap#',FSMmap)
		elif '#keyMemoryMap#' in line:
			line = line.replace('#keyMemoryMap#',keyMemory_number + keyMemory)
		elif '#cipherMap#' in line:
			line = line.replace('#cipherMap#',cipher_number + cipherMap)
		elif '#msgRegisterMap#' in line:
			line = line.replace('#msgRegisterMap#',msgRegister_number + msgRegisterMap)
		elif '#romZ_number#' in line:
			line = line.replace('#romZ_number#',romZ_number)
		print line,	
			
	

if __name__ == '__main__':
	fill_cryptoProc(int(sys.argv[1]),int(sys.argv[2]))
