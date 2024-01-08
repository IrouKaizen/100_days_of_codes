#!/bin/bash

# Port pour le serveur TCP
TCP_PORT=4444

# Port pour le serveur UDP
UDP_PORT=9999

# Fonction pour le serveur TCP
start_tcp_server() {
    echo "Démarrage du serveur TCP sur le port $TCP_PORT"
    nc -l -p $TCP_PORT
}

# Fonction pour le serveur UDP
start_udp_server() {
    echo "Démarrage du serveur UDP sur le port $UDP_PORT"
    nc -lu -p $UDP_PORT
}

# Démarrage des serveurs
start_tcp_server &   # Démarrage en arrière-plan
start_udp_server &   # Démarrage en arrière-plan

# Attendre que les serveurs se terminent (peut être interrompu avec Ctrl+C)
wait


# Comment verifier le code ?

# Ouvrez deux terminaux distincts

# Dans le premier terminal, utilisez telnet pour envoyer un message au serveur TCP 
# telnet localhost 4444

# Dans le deuxième terminal, utilisez nc pour envoyer un message au serveur UDP 
# echo "Hello UDP" | nc -u localhost 9999

