#importation des librairies utiles
import time
import serial
import signal
import sys, os

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
##envoi de la trame
# envoi de la cle

def read_datafile (file_name):
    data = open(file_name, "r")
    data_lines = data.readlines()
    k = data_lines[0]
    iv = data_lines[1]
    return [k,iv]

def write (data):
        for i in range(len(data)-1):
	    ser.write(data[i])
	    time.sleep(0.02)

def write_hexa (data):
        for i in range(len(data)):
	    ser.write(data[i])
	    time.sleep(0.02)

def read_data ():
	# reception du resultat
	serial_readline = ser.readline()
	time.sleep(0.1)
	print(serial_readline.encode("hex"))
        return serial_readline.encode("hex")


if __name__ == "__main__":
    os.system('clear')
    [K,IV] =read_datafile(str(sys.argv[1]))
    print "KEY : ",K
    write(K)
    print "IV : ",IV
    write(IV)
    os.system('xterm -hold -e picocom -b 115200 /dev/ttyUSB0 &')
    output_file = open("output.txt", "w")
    try:
        while(1):
           input_text=raw_input("data (hex) : ")
           print "data :",input_text.decod("hex")
           write_hexa(input_text.decod("hex"))
           output_file.write(read_data())
        
    except KeyboardInterrupt:
        output_file.close()
        ser.close()
        exit()
