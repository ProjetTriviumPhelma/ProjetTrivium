# generator of Simon's cryptoprocessors

#import modules
from keyGenerator import *
from romZ import *
from constants import * 
from testbench import *
from FSM import *
from msgRegister import *
from cipher import *
from cryptoProc import *
from fichiersPRJ import *
import shutil
import os

from argparse import ArgumentParser


def main():
	
	if os.path.exists('../cryptoProc') and os.path.isdir('../cryptoProc'):
    		shutil.rmtree('../cryptoProc')	
	shutil.copytree('./vhd_template','../cryptoProc')
	parser = ArgumentParser()
	parser.add_argument("-k", "--keysize", choices = ["64", "72", "96", "128", "144", "192", "256"], help="Key size", required=True)	#taille de la cle
	parser.add_argument("-b", "--blocksize", choices=["32","48","64","96","128"], help="Block size", required=True)				#taille du message
	parser.add_argument("-p", "--purpose", choices=["c","d","cd"], help="Purpose", required=True)						#type d'IP
	parser.add_argument("-opt", "--options", choices=["c","r"], help="Options", required=True)						#memorisation ou rechargement de la cle
	args = parser.parse_args()
	

	(z_index, m, T) =fill_constants(int(args.blocksize), int(args.keysize))
	fill_FSM(args.purpose, args.options)
	fill_msgRegister(args.purpose, args.options)
	fill_cipher(args.purpose, args.options)
	fill_cryptoProc(args.purpose, args.options)
	fill_fichiersPRJ(args.purpose, args.options)
	fill_keyGenerator(m)
	fill_romZ(z_index)
	fill_testbench(int(args.blocksize), int(args.keysize), T, args.purpose, args.options)

if __name__ == '__main__':
    main()

