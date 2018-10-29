#!/usr/bin/python
'''
Created on February 13, 2018
@author: Groupe 4
@brief:
'''
import os, sys
import serial
from time import sleep

class UART_Com:

    def __init__(self):

        self.settings = {};
        self.ser = serial.Serial(
               port='/dev/ttyAMA0',
               baudrate = 115200,
               parity=serial.PARITY_NONE, # car on ne l'a pas implemente dans le VHDL
               stopbits=serial.STOPBITS_ONE,
               bytesize=serial.EIGHTBITS,
               timeout=1
           )
        self.counter=0

    def uart_read(self):
         while 1:
               x=self.ser.readline()
               print x

    def uart_write(self):
         while 1:
               self.ser.write('Write counter: %d \n'%(self.counter))
               sleep(1)
               self.counter += 1
if __name__ =='__main__':
   UART_Com()
   UART_Com.write()
   sleep(10)
   UART_Com.read()

