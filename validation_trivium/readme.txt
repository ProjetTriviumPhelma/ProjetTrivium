Dans ce dossier vous trouverez:

####################
### ARBORESCENCE ###
####################

-Un dossier REF qui contient :
	-Le module Trivium de référence (TRIVIUM_CORE.vhd)
	-Le générateur de flux chiffré (Trivium_Generator_vvect.vhd)
-Un dossier VHDL qui contient :
	-Le fichier text dans lequel il y a les vecteurs de test (test-vectors.txt)
	-Un decodeur hexadécimal vers binaire (hextobin.vhd)
	-Un générateur de vecteur clé et initialistaion (generateur_vect.vhd)
	-Notre IP Trivium (trivium_v2.vhd)
	-Notre générateur de flux chiffré (trivium_gen_nils_vvect.vhd)
	-Le test bench de validation (tb_generateur.vhd)
-Un dossier lib_BENCH qui contient l'ensemble des modules compilés
-Un script tcl (bench.tcl) qui permet de séquencer les taches du simulateur modelsim
-Un script shell (setup.sh) qui permet de lancer la compilation des fichiers ".vhd" puis d'ouvrir modelsim avec la config nécésaire


############################
### LANCER LA VALIDATION ###
############################

vous devez dans un premier temps sourcer le fichier modelsim puis dans la même fenêtre du terminal, faire un "source setup.sh" dans le même répertoire que le readme.txt

(La validation s'execute automatiquement, cepandant, dans modelsim, vous pouvez refaire un run de 1000 us pour continuer de tester l'IP Trivium)

Si le Trivium fonctionne correctement, la sortie validation reste à '0'.
