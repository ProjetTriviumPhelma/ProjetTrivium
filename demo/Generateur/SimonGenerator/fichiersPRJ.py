# cryptoProc
import fileinput
import sys

compil = "../cryptoProc/projetNum_compil.prj"
synth = "../cryptoProc/projetNum_synth.prj"

def fill_fichiersPRJ(p,opt):
	if (p=='c') and (opt == 'r'):
		keyMemory_compil = ''
		keyMemory_synth = ''
	else:	#ajout de keyMemory pour IPs dechiffrement (seul ou non) ou chiffrement seul complet dans le fichier projet
		keyMemory_compil = "vhdl work \"./keyMemory.vhd\""
		keyMemory_synth = "work \"./keyMemory.vhd\""

	#remplissage des fichiers projetNum_.prj
	for line in fileinput.FileInput(compil, inplace =1):		
		if '#keyMemory_compil#' in line:
			line = line.replace('#keyMemory_compil#',keyMemory_compil)
		print line,

	for line in fileinput.FileInput(synth, inplace =1):		
		if '#keyMemory_synth#' in line:
			line = line.replace('#keyMemory_synth#',keyMemory_synth)
		print line,

if __name__ == '__main__':
	fill_fichiersPRJ(int(sys.argv[1]),int(sys.argv[2]))
	

