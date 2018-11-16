# Développement du VHDL

## IP Chiffrement

L'IP Chiffrement est un bloc VHDL avec 6 entrées et 2 sorties comme représenté ci-dessous:

![IP Chiffrement](presentation/Chiffrement.png "IP Chiffrement")

Cette IP permet de charger en entrée un flux de donnée de 80bits et d'obtenir en sortie un paquet de 80bits chiffrés.
Dans ce bloc on retrouve deux autres IPs :
- Le `TRIVIUM`
- Le `BUFFER`

![Chiffrement ARCHI](presentation/Chiffrement_TOP.png "Chiffrement ARCHI")

### IP Trivium

Le Trivium Permet de chiffrer un flux de donnée

Spécifications:
Le nombre de bits codés > 32bits/cycle à une fréquence de 10MHz

![Trivium](presentation/Trivium.png "Trivium")

Nous avons implémenté 6 entrées et 3 sorties :
- L'entrée **CLK** permet d'être synchronisée sur l'horloge
- L'entrée **RSTb** permet de reseter la machine dans l'état *<span style="color:grey">INIT</span>*
- L'entrée **EN** permet de sortir de l'etat initial de la FSM et donc de commencer le chiffrement
- L'entrée **LOAD** permet de charger la clé secrete
- L'entrée **IV_IN** correspond à l'entrée du flux de donnée (bus sur 80bits)
- L'entrée **SK_IN** correspond à l'entrée de la clé secrete (bus sur 80bits)
- La sortie **ACK** est un flag qui avertit lorsque la FSM est dans l'état *<span style="color:grey">INIT</span>*
- La sortie **MODE_RUN** est un flag qui avertit lorsque la FSM est dans l'état *<span style="color:grey">RUN</span>*
- La sortie **KEY_STREAM_OUT** nous permet d'obtenir bit à bit la donée chffrée

![FSM Trivium](presentation/Trivium_FSM.png "FSM Trivium")

**Les différents états et leur rôle :**

- LOAD, cet état permet de charger la clé de chiffrement, elle est appellée au moins une fois au démarage de l'IP.
- INIT,
- FIRST LOOP, permet d'attendre le nombre de cycles nécéssaire pour chiffrer le flux de données (4*288)
- RUN INIT,
- RUN, permet d'attendre 80 cycles avant de revenir à l'état initial.


### IP Buffer_80bits

![Buffer](presentation/Buffer.png "Buffer")

Nous avons implémenté 4 entrées et 2 sorties :
- L'entrée **CLK** permet d'être synchronisée sur l'horloge
- L'entrée **RSTb** permet de reseter la sortie de l'IP
- L'entrée **MODE_RUN** qui déclenche l'empilement des bits depuis
- L'entrée **STREAM_IN** correspond à l'entrée du flux de donnée (bus sur 80bits)
- La sortie **ACK** est un flag qui avertit lorsque les 80 bits sont prets en sortie
- La sortie **STREAM_OUT** le vecteur de 80 bits chiffrés

# Test des blocs RTL

## Test et validation du Tivium

Pour valider le trivium il est impératif de verifier :
- Que l'on passe au moins une fois dans chaque états de la machine à état.
- Que les conditions d'entrées/sorties des états sont respectées
- Que les compteurs ne dépassent pas la valeur maximum et qu'ils repassent tous à zéro
- Que le reset fonctionne
- Que la séquence de bit générée en sortie est valide (comparaison avec 2 IP fonctionnelles dispanible sur le web)

Nous avons donc conçu un bench `tb_trivium.vhd` dans lequel nous implémentons :
- l'IP Trivium
- Une horloge clk de fréquence f = 50MHz
- Un signal de reset initialement actif puis inactif au bout de 4 cycles d'horloges
- Un signal load qui permet de charger la clé de chiffrement au bout de 5,5 cycles d'horlage
- Un signal enable qui permet de sortir de l'état iitial de la FSM
_________________________________
**Référence vers depot github :**

- [IP Trivium Regis](https://github.com/inmcm/HDL_Ciphers/blob/master/Trivium)
- [IP Trivium Tiers](https://github.com/yahniukov/Trivium_FPGA)
