
import time
import serial
import sys
import fileinput

#def write_dyn(idn,length,mode,data,instruction):
#	time.sleep(0.005)

# configure the serial connections (the parameters differs on the device you are connecting to)
ser = serial.Serial(
    port='/dev/ttyUSB0',
#     port='/dev/ttyS0',
    baudrate=115200,
#    parity=serial.PARITY_ODD,
    parity=serial.PARITY_NONE,
#    parity=serial.PARITY_EVEN,
    stopbits=serial.STOPBITS_ONE,
    bytesize=serial.EIGHTBITS,
	timeout=1
)

ser.isOpen()

#delay=0.0002

idn=(0x02)
length= (0x04)
mode= (0x03) # write
data= (0x19)

# appel fonction write_dyn
#instruction= (0x01)  # allumage diode
#write_dyn(idn,length,mode,data,instruction)

#time.sleep(0.01)  # environ 100 ms

# acces sans fonction write_dyn

# on prend en entree la cle, le message et les signaux de controle en HEXA
print("\n")
ctrl = raw_input("Ctrl : ")
msg = raw_input("Msg : ") 
cle = raw_input("Key : ")

# on cree les listes qui contiendront l'equivalent en decimal des entrees octet par octet (chaque element d'une liste est un octet)
# par exemple : 0x1a06 --> [26, 6]
list_msg = []
list_cle = []
list_ctrl = []

# cette fonction sert a remplir les listes ci_dessus comme explique
def char_to_list(chaine, liste, taille_liste):

	i = 0

	while i < 2*taille_liste:
		v1 = chaine[i]
		v2 = chaine[i+1]

		if v1 == 'a' or v1 == 'A':
			v1 = '10'
		elif v1 == 'b' or v1 == 'B':
			v1 = '11'
		elif v1 == 'c' or v1 == 'C':
			v1 = '12'
		elif v1 == 'd' or v1 == 'D':
			v1 = '13'
		elif v1 == 'e' or v1 == 'E':
			v1 = '14'
		elif v1 == 'f' or v1 == 'F':
			v1 = '15'

		if v2 == 'a' or v2 == 'A':
			v2 = '10'
		elif v2 == 'b' or v2 == 'B':
			v2 = '11'
		elif v2 == 'c' or v2 == 'C':
			v2 = '12'
		elif v2 == 'd' or v2 == 'D':
			v2 = '13'
		elif v2 == 'e' or v2 == 'E':
			v2 = '14'
		elif v2 == 'f' or v2 == 'F':
			v2 = '15'

		liste.append(int(v1)*16+int(v2))
		i = i + 2

# on fait appel a la fonction de remplissage des listes
char_to_list(msg, list_msg, 8)
char_to_list(cle, list_cle, 16)
char_to_list(ctrl, list_ctrl, 1)

## OUTP:STAT ON

# on envoie le contenu des listes vers la carte FPGA
for j in range(15,-1,-1):
	ser.write(chr(list_cle[j]))
for j in range(7,-1,-1):
	ser.write(chr(list_msg[j]))

ser.write(chr(list_ctrl[0]))

# on recupere le resultat en sortie de la carte FPGA
serial_readline = ser.readline()
time.sleep(0.01)
serial_hex = serial_readline.encode("hex")

# on ecrit le resultat obtenu dans un fichier result.txt et on l'affiche egalement sur le terminal. On fait attention a renverser l'ordre de reception des octets (envoyes en ordre inverse)
file_result = open('./result.txt', 'w+')
print("Result : "),
for k in range(15,-2,-2):
	if k > 0 :
		print(serial_hex[k-1:k+1]),
		sys.stdout.softspace = 0
		file_result.write(serial_hex[k-1:k+1])
	else:
		print(serial_hex[k-1:k+1])
		print("\n")
		file_result.write(serial_hex[k-1:k+1])
		
# on ferme le fichier result.txt
file_result.close()

# on envoie une trame de zeros pour remettre le signal start_stop a zero
for j in range(24,-1,-1):
	ser.write(chr(0))

# on ferme la connection serie
ser.close()


#print("/n fin de la routine")
exit
