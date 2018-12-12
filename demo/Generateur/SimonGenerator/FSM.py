# FSM
import fileinput
import sys

file_name = "../cryptoProc/FSM.vhd"

def fill_FSM(p,opt):

	#chargement des blocs
	if p == 'c': # chiffrement uniquement
		file = open('./blocs/FSM_init_C.txt', 'r')
		init = file.read()
		file.close()	
	
		load_decipher = ''
		mem_key_state = ''
		decipher = ''
		cipher_sig = ''
		switch = ''		

		if opt == 'c': #complet
			file = open('./blocs/FSM_C_complet.txt', 'r')
			port = file.read()
			file.close()
		
			file = open('./blocs/FSM_state_C_complet.txt', 'r')
			states = file.read()
			file.close()

			file = open('./blocs/FSM_load_cipher_complet.txt', 'r')
			load_cipher = file.read()
			file.close()

			file = open('./blocs/FSM_cipher_complet.txt', 'r')
			cipher = file.read()
			file.close()

			file = open('./blocs/FSM_recipher.txt', 'r')
			recipher = file.read()
			file.close()

			new_key = ',new_key'
			mem_key = "mem_key <= '0';"
			ki_mux = "ki_mux <= '0';"
			key_address_zero = "key_address <= (others => '0');"
			key_address_incr = "key_address <= std_logic_vector(current_i);"
	
		else : #recharge de la cle
			file = open('./blocs/FSM_C_recharge.txt', 'r')
			port = file.read()
			file.close()
		
			file = open('./blocs/FSM_state_C_recharge.txt', 'r')
			states = file.read()
			file.close()

			file = open('./blocs/FSM_load_cipher_recharge.txt', 'r')
			load_cipher = file.read()
			file.close()

			file = open('./blocs/FSM_cipher_recharge.txt', 'r')
			cipher = file.read()
			file.close()

			recipher = ''
			new_key = ''
			mem_key = ''
			ki_mux = ''
			key_address_zero = ''
			key_address_incr = ''

	elif p == 'd':# dechiffrement uniquement 
		file = open('./blocs/FSM_init_D.txt', 'r')
		init = file.read()
		file.close()	

		file = open('./blocs/FSM_state_D.txt', 'r')
		states = file.read()
		file.close()

		file = open('./blocs/FSM_decipher_D.txt', 'r')
		decipher = file.read()
		file.close()

		file = open('./blocs/FSM_mem_key_state.txt', 'r')
		mem_key_state = file.read()
		file.close()
	
		load_cipher = ''
		cipher = ''
		recipher = ''
		cipher_sig = ''	
		mem_key = "mem_key <= '0';"
		ki_mux = ''
		switch = "switch <= '0';"
		key_address_zero = "key_address <= (others => '0');"
		key_address_incr = "key_address <= std_logic_vector(current_i);"

		if opt == 'c': #complet
			file = open('./blocs/FSM_D_complet.txt', 'r')
			port = file.read()
			file.close()

			file = open('./blocs/FSM_load_decipher_complet.txt', 'r')
			load_decipher = file.read()
			file.close()
			
			new_key = ',new_key'

		else : #recharge de la cle
			file = open('./blocs/FSM_D_recharge.txt', 'r')
			port = file.read()
			file.close()

			file = open('./blocs/FSM_load_decipher_recharge.txt', 'r')
			load_decipher = file.read()
			file.close()

			new_key = ''

	elif p == 'cd':# chiffrement/dechiffrement 
		file = open('./blocs/FSM_init_CD.txt', 'r')
		init = file.read()
		file.close()	

		file = open('./blocs/FSM_mem_key_state.txt', 'r')
		mem_key_state = file.read()
		file.close()

		file = open('./blocs/FSM_decipher.txt', 'r')
		decipher = file.read()
		file.close()
	
		cipher_sig = ',cipher_sig'
		mem_key = "mem_key <= '0';"
		ki_mux = "ki_mux <= '0';"
		switch = "switch <= '0';"
		key_address_zero = "key_address <= (others => '0');"
		key_address_incr = "key_address <= std_logic_vector(current_i);"

		if opt == 'c': #complet
			file = open('./blocs/FSM_state_CD_complet.txt', 'r')
			states = file.read()
			file.close()
		
			file = open('./blocs/FSM_CD_complet.txt', 'r')
			port = file.read()
			file.close()

			file = open('./blocs/FSM_load_decipher_complet.txt', 'r')
			load_decipher = file.read()
			file.close()

			file = open('./blocs/FSM_load_cipher_complet.txt', 'r')
			load_cipher = file.read()
			file.close()

			file = open('./blocs/FSM_cipher_complet.txt', 'r')
			cipher = file.read()
			file.close()

			file = open('./blocs/FSM_recipher.txt', 'r')
			recipher = file.read()
			file.close()
	
			new_key = ',new_key'
	
		else : #recharge de la cle
			file = open('./blocs/FSM_state_CD_recharge.txt', 'r')
			states = file.read()
			file.close()
		
			file = open('./blocs/FSM_CD_recharge.txt', 'r')
			port = file.read()
			file.close()

			file = open('./blocs/FSM_load_decipher_recharge.txt', 'r')
			load_decipher = file.read()
			file.close()

			file = open('./blocs/FSM_load_cipher_recharge.txt', 'r')
			load_cipher = file.read()
			file.close()

			file = open('./blocs/FSM_cipher_recharge.txt', 'r')
			cipher = file.read()
			file.close()
			
			new_key = ''
			recipher = ''
	
	#remplacement
	for line in fileinput.FileInput(file_name, inplace =1):		
		if '#FSMport#' in line:
			line = line.replace('#FSMport#',port)
		elif '#FSMstates#' in line:
			line = line.replace('#FSMstates#',states)
		elif '#init#' in line:
			line = line.replace('#init#',init)
		elif '#load_cipher#' in line:
			line = line.replace('#load_cipher#',load_cipher)
		elif '#cipher#' in line:
			line = line.replace('#cipher#',cipher)
		elif '#recipher#' in line:
			line = line.replace('#recipher#',recipher)
		elif '#load_decipher#' in line:
			line = line.replace('#load_decipher#',load_decipher)
		elif '#decipher#' in line:
			line = line.replace('#decipher#',decipher)
		elif '#mem_key_state#' in line:
			line = line.replace('#mem_key_state#',mem_key_state)
		elif '#cipher_sig#' in line:
			line = line.replace('#cipher_sig#',cipher_sig)
			line = line.replace('#new_key#',new_key)
		elif '#mem_key#' in line:
			line = line.replace('#mem_key#',mem_key)
		elif '#ki_mux#' in line:
			line = line.replace('#ki_mux#',ki_mux)
		elif '#switch#' in line:
			line = line.replace('#switch#',switch)
		elif '#key_address_zero#' in line:
			line = line.replace('#key_address_zero#',key_address_zero)
		elif '#key_address_incr#' in line:
			line = line.replace('#key_address_incr#',key_address_incr)
		print line,
		
if __name__ == '__main__':
	fill_FSM(int(sys.argv[1]),int(sys.argv[2]))
			
			 
