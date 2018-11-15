# IP Chiffrement

L'IP Chiffrement est un bloc VHDL avec 6 entrées et 2 sorties comme représenté ci-dessous:
![IP Chiffrement](presentation/Chiffrement.png "IP Chiffrement")
Cette IP permet de charger en entrée un flux de donnée de 80bits et d'obtenir en sortie un paquet de 80bits chiffrés.
Dans ce bloc on retrouve deux autres IPs :
- Le `TRIVIUM`
- Le `BUFFER`

![Chiffrement ARCHI](presentation/Chiffrement_TOP.png "Chiffrement ARCHI")

## IP Trivium

Le Trivium Permet de chiffrer un flux de donnée

Spécifications:
Le nombre de bits codés > 32bits/cycle à une fréquence de 10MHz

![Trivium](presentation/Trivium.png "Trivium")

Nous avons implémenté 6 entrées et 3 sorties :
- L'entrée `CLK` permet d'être synchronisée sur l'horloge
- L'entrée `RSTb` permet de reseter la machine à l'état **INIT** de l'IP
- L'entrée `EN` permet de sortir de l'etat initial de la FSM et donc de commencer le chiffrement
- L'entrée `LOAD` permet de charger la clé secrete
- L'entrée `IV_IN` correspond à l'entrée du flux de donnée (bus sur 80bits)
- L'entrée `SK_IN` correspond à l'entrée de la clé secrete (bus sur 80bits)
- La sortie `ACK` est un flag qui avertit lorsque la FSM est dans l'état **INIT**
- La sortie `MODE_RUN` est un flag qui avertit lorsque la FSM est dans l'état **RUN**
- La sortie `KEY_STREAM_OUT` nous permet d'obtenir bit à bit la donée chffrée

![FSM Trivium](presentation/Trivium_FSM.png "FSM Trivium")


## IP Buffer_80bits

![Buffer](presentation/Buffer.png "Buffer")

Nous avons implémenté 4 entrées et 2 sorties :
- L'entrée `CLK` permet d'être synchronisée sur l'horloge
- L'entrée `RSTb` permet de reseter la sortie de l'IP
- L'entrée `MODE_RUN` qui déclenche l'empilement des bits depuis
- L'entrée `STREAM_IN` correspond à l'entrée du flux de donnée (bus sur 80bits)
- La sortie `ACK` est un flag qui avertit lorsque les 80 bits sont prets en sortie
- La sortie `STREAM_OUT` le vecteur de 80 bits chiffrés
____________________________
**Référence vers depot github :**

- [IP Trivium Regis](https://github.com/inmcm/HDL_Ciphers/blob/master/Trivium)
- [IP Trivium Tiers](https://github.com/yahniukov/Trivium_FPGA)
