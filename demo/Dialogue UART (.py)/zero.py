
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
ser.write(chr(0x00))
ser.write(chr(0x00))
ser.write(chr(0x00))
ser.write(chr(0x00))
ser.write(chr(0x00))
ser.write(chr(0x00))
ser.write(chr(0x00))
ser.write(chr(0x00))
ser.write(chr(0x00))
ser.write(chr(0x00))
ser.write(chr(0x00))
ser.write(chr(0x00))
ser.write(chr(0x00))
ser.write(chr(0x00))
ser.write(chr(0x00))
ser.write(chr(0x00))
#message
ser.write(chr(0x00))
ser.write(chr(0x00))
ser.write(chr(0x00))
ser.write(chr(0x00))
ser.write(chr(0x00))
ser.write(chr(0x00))
ser.write(chr(0x00))
ser.write(chr(0x00))
#controle signals
ser.write(chr(0x00))

ser.close()


print("fin de la routine")
exit





