
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
ser.write(chr(0x01))
ser.write(chr(0x02))
ser.write(chr(0x03))
ser.write(chr(0x08))
ser.write(chr(0x09))
ser.write(chr(0x0a))
ser.write(chr(0x0b))
ser.write(chr(0x10))
ser.write(chr(0x11))
ser.write(chr(0x12))
ser.write(chr(0x13))
ser.write(chr(0x18))
ser.write(chr(0x19))
ser.write(chr(0x1a))
ser.write(chr(0x1b))
#massage
ser.write(chr(0x75))
ser.write(chr(0x6e))
ser.write(chr(0x64))
ser.write(chr(0x20))
ser.write(chr(0x6c))
ser.write(chr(0x69))
ser.write(chr(0x6b))
ser.write(chr(0x65))
#control signals
ser.write(chr(0x07))

# result reception
serial_readline = ser.readline()
time.sleep(0.01)
print(serial_readline.encode("hex")) # result display

#close serial connection
ser.close()


print("fin de la routine")
exit



