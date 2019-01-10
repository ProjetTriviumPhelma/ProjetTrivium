#importation des librairies utiles
import time
import serial

ser = serial.Serial(
    port="/dev/ttyUSB0",
    baudrate=115200,
    parity=serial.PARITY_NONE,
    stopbits=serial.STOPBITS_ONE,
    bytesize=serial.EIGHTBITS,
    timeout=1
)
#ouverture de la liaison serie
ser.isOpen()
idn=(0x02)
length= (0x04)
mode= (0x03)
data= (0x19)
##envoi de la trame
# envoi de la cle
ser.write(chr(0x46))
##ser.write(chr(0xAA))
##ser.write(chr(0xAA))
##ser.write(chr(0xAA))

##ser.write(chr(0xAA))
##ser.write(chr(0xAA))
##ser.write(chr(0xAA))
##ser.write(chr(0xAA))

##ser.write(chr(0xAA))
##ser.write(chr(0xAA))
##ser.write(chr(0xAA))
##er.write(chr(0xAA))

##ser.write(chr(0xAA))
##ser.write(chr(0xAA))
##ser.write(chr(0xAA))
##ser.write(chr(0xAA))

##ser.write(chr(0xAA))
##ser.write(chr(0xAA))
##ser.write(chr(0xAA))
##ser.write(chr(0xAA))

##ser.write(chr(0xAA))

# reception du resultat
serial_readline = ser.readline()
time.sleep(0.1)
print(serial_readline.encode("hex"))
#fermeture de la liaison serie
#ser.close()
print("fin de la routine")
