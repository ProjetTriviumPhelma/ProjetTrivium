#!/usr/bin/python
import time
import serial
import sys, os

#ser = serial.Serial(
#    port="/dev/ttyUSB0",
#    baudrate=115200,
#    parity=serial.PARITY_NONE,
#    stopbits=serial.STOPBITS_ONE,
#    bytesize=serial.EIGHTBITS,
#    timeout=1
#)



#ser.isOpen()

def load (data):
    if len(data) < 10 or len(data)>10:
	print("text invalide")
	exit()
    else:
        for i in data:
            print(i)
            time.sleep(0.02)

def read_data ():
	# reception du resultat
	serial_readline = ser.readline()
	time.sleep(0.1)
	print(serial_readline.encode("hex"))
	#fermeture de la liaison serie
	#ser.close()

	print("fin de la routine")

if __name__ == "__main__":
    print("KEY (10 char)")
    data = raw_input()
    load(data)
    print("IV (10 char)")
    data = raw_input()
    load(data)
