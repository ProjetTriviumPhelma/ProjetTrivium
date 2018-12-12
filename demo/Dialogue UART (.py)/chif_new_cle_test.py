
import time
import serial

# configure the serial connections (the parameters differs on the device you are connecting to)
ser = serial.Serial(
    port='/dev/ttyUSB0',
    baudrate=115200,
    parity=serial.PARITY_NONE,
    stopbits=serial.STOPBITS_ONE,
    bytesize=serial.EIGHTBITS
)

#open the serial connection
ser.isOpen()


idn=(0x02)
length= (0x04)
mode= (0x03) # write
data= (0x19)

## send frame
#key
ser.write(chr(0x02))
ser.write(chr(0x03))
ser.write(chr(0x04))
ser.write(chr(0x05))
ser.write(chr(0x06))
ser.write(chr(0x07))
ser.write(chr(0x08))
ser.write(chr(0x09))
ser.write(chr(0x10))
ser.write(chr(0x90))
ser.write(chr(0x91))
ser.write(chr(0x92))
ser.write(chr(0x93))
ser.write(chr(0x94))
ser.write(chr(0x95))
ser.write(chr(0x96))
#message
ser.write(chr(0xb5))
ser.write(chr(0x4e))
ser.write(chr(0x09))
ser.write(chr(0xfb))
ser.write(chr(0x91))
ser.write(chr(0xc0))
ser.write(chr(0xb1))
ser.write(chr(0x99))
#controle signals
ser.write(chr(0x06))

# result reception
serial_readline = ser.readline()
time.sleep(0.01)
print(serial_readline.encode("hex")) # result display

#close serial connection
ser.close()


print("fin de la routine")
exit


