
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
ser.write(chr(0x7a))
ser.write(chr(0xa0))
ser.write(chr(0xdf))
ser.write(chr(0xb9))
ser.write(chr(0x20))
ser.write(chr(0xfc))
ser.write(chr(0xc8))
ser.write(chr(0x44))
#controle signals
ser.write(chr(0x04))

# result reception
serial_readline = ser.readline()
time.sleep(0.01)
print(serial_readline.encode("hex")) # result display

#close serial connection
ser.close()


print("fin de la routine")
exit
