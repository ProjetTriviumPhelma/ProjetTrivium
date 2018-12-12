# testbench

file_name = "../cryptoProc/cryptoProc_tb.vhd"
import fileinput

def fill_testbench(block_size, key_size, T, p, opt):
	
	if p == 'c':	#chiffrement
		cipher_sig_0 = ''		
		cipher_sig_1 = ''
		cipher_sig = ''
		new_key = "signal new_key : std_logic := '0';"
	
		if opt == 'c':	#complet
			file = open('./blocs/bench_CC.txt', 'r')
			test = file.read()
			file.close()
			
			file = open('./blocs/cryptoproc_CxorD_complet.txt', 'r')
			crytoProcPort = file.read()
			file.close()

			file = open('./blocs/cryptoproc_map_CxorD_complet.txt', 'r')
			crytoProcMap = file.read()
			file.close()
		else :		#recharge cle
			file = open('./blocs/bench_C.txt', 'r')
			test = file.read()
			file.close()
			
			file = open('./blocs/cryptoproc_CxorD_recharge.txt', 'r')
			crytoProcPort = file.read()
			file.close()

			file = open('./blocs/cryptoproc_map_CxorD_recharge.txt', 'r')
			crytoProcMap = file.read()
			file.close()
		
	elif p == 'd':		#dechiffrement
		cipher_sig_0 = ''
		cipher_sig_1 = ''
		cipher_sig = ''
	
		if opt == 'c':	#complet
			file = open('./blocs/bench_DD.txt', 'r')
			test = file.read()
			file.close()
			
			file = open('./blocs/cryptoproc_CxorD_complet.txt', 'r')
			crytoProcPort = file.read()
			file.close()

			file = open('./blocs/cryptoproc_map_CxorD_complet.txt', 'r')
			crytoProcMap = file.read()
			file.close()

			new_key = "signal new_key : std_logic := '0';"
	
		else :		#recharge cle
			file = open('./blocs/bench_D.txt', 'r')
			test = file.read()
			file.close()
			
			file = open('./blocs/cryptoproc_CxorD_recharge.txt', 'r')
			crytoProcPort = file.read()
			file.close()

			file = open('./blocs/cryptoproc_map_CxorD_recharge.txt', 'r')
			crytoProcMap = file.read()
			file.close()

			new_key = ''
	else :			#chiffrement/dechiffrement
		cipher_sig_1 = "cipher_sig <= '1';"
		cipher_sig_0 = "cipher_sig <= '0';"
		cipher_sig = "signal cipher_sig : std_logic := '0';"	

		if opt == 'c':	#complet	
			file = open('./blocs/bench_CC.txt', 'r')
			test = file.read()
			file.close()
	
			file = open('./blocs/bench_DD.txt', 'r')
			test = test + file.read()
			file.close()
		
			file = open('./blocs/bench_CD.txt', 'r')
			test = test + file.read()
			file.close()
	
			file = open('./blocs/bench_DC.txt', 'r')
			test = test + file.read()
			file.close()
			
			file = open('./blocs/cryptoproc_CD_complet.txt', 'r')
			crytoProcPort = file.read()
			file.close()

			file = open('./blocs/cryptoproc_map_CD_complet.txt', 'r')
			crytoProcMap = file.read()
			file.close()
			
			new_key = "signal new_key : std_logic := '0';"	

		else :		#recharge cle
			file = open('./blocs/bench_C.txt', 'r')
			test = file.read()
			file.close()
	
			file = open('./blocs/bench_D.txt', 'r')
			test = test + file.read()
			file.close()
					
			file = open('./blocs/cryptoproc_CD_recharge.txt', 'r')
			crytoProcPort = file.read()
			file.close()

			file = open('./blocs/cryptoproc_map_CD_recharge.txt', 'r')
			crytoProcMap = file.read()
			file.close()
	
			new_key = ''	

	#remplacement
	for line in fileinput.FileInput(file_name, inplace =1):	
		if '#test#' in line:
			line = line.replace('#test#', test)
		print line,

	if block_size == 32 and key_size == 64:
		Key = "1918111009080100"
		Plaintext = "65656877"
		Ciphertext = "c69be9bb"
	elif block_size == 48:
		if key_size == 72:	
			Key = "1211100a0908020100"
			Plaintext = "6120676e696c"
			Ciphertext = "dae5ac292cac"
		elif key_size == 96:
			Key = "1a19181211100a0908020100"
			Plaintext = "72696320646e"
			Ciphertext = "6e06a5acf156"
	elif block_size == 64:
		if key_size == 96:	
			Key = "131211100b0a090803020100"
			Plaintext = "6f7220676e696c63"
			Ciphertext = "5ca2e27f111a8fc8"
		elif key_size == 128:	
			Key = "1b1a1918131211100b0a090803020100"
			Plaintext = "656b696c20646e75"
			Ciphertext = "44c8fc20b9dfa07a"
	elif block_size == 96:
		if key_size == 96:	
			Key = "0d0c0b0a0908050403020100"
			Plaintext = "2072616c6c69702065687420"
			Ciphertext = "602807a462b469063d8ff082"
		elif key_size == 144:	
			Key = "1514131211100d0c0b0a0908050403020100"
			Plaintext = "74616874207473756420666f"
			Ciphertext = "ecad1c6c451e3f59c5db1ae9"
	elif block_size == 128:
		if key_size == 128:	
			Key = "0f0e0d0c0b0a09080706050403020100"
			Plaintext = "63736564207372656c6c657661727420"
			Ciphertext = "49681b1e1e54fe3f65aa832af84e0bbc"
		elif key_size == 192:	
			Key = "17161514131211100f0e0d0c0b0a09080706050403020100"
			Plaintext = "206572656874206e6568772065626972"
			Ciphertext = "c4ac61effcdc0d4f6c9c8d6e2597b85b"
		elif key_size == 256:	
			Key = "1f1e1d1c1b1a191817161514131211100f0e0d0c0b0a09080706050403020100"
			Plaintext = "74206e69206d6f6f6d69732061207369"
			Ciphertext = "8d2b5579afc8a3a03bf72a87efe7b868"
	
	for line in fileinput.FileInput(file_name, inplace =1):	
		if '#crytoProcPort#' in line:
			line = line.replace('#crytoProcPort#',crytoProcPort)
		elif '#cryptoProcMap#' in line:
			line = line.replace('#cryptoProcMap#',crytoProcMap)		
		elif '#cipher_sig_1#' in line:
			line = line.replace('#cipher_sig_1#',cipher_sig_1)
		elif '#cipher_sig_0#' in line:
			line = line.replace('#cipher_sig_0#',cipher_sig_0)
		elif '#cipher_sig#' in line:
			line = line.replace('#cipher_sig#',cipher_sig)
		elif '#new_key#' in line:
			line = line.replace('#new_key#',new_key)		
		elif '#Key#' in line:
			line = line.replace('#Key#',str(Key))
		elif '#Plaintext#' in line:
			line = line.replace('#Plaintext#',str(Plaintext))
		elif '#Ciphertext#' in line:
			line = line.replace('#Ciphertext#',str(Ciphertext))
		elif '#time1#' in line:
			line = line.replace('#time1#',str(T*10+30))
		elif '#time2#' in line:
			line = line.replace('#time2#',str(T*20+30))
		elif '#couple#' in line:
			line = line.replace('#couple#', str(block_size) + '/' + str(key_size))

		print line,

if __name__ == '__main__':
    fill_testbench()

