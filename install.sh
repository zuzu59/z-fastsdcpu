#!/usr/bin/env bash
#Petit script pour installer facilement Fastsdcpu dans un container LXC sous Proxmox et ses outils qui vont bien
#zf250303.1757

# source: 

echo -e "\Installation de Fastsdcpu...

ATTENTION: il faut choisir le template Ubuntu 22.x standard pour le container LXC !
La version Ubuntu supérieure ne fonctionne pas encore avec les libs de Fastsdcpu.

"

echo ""
read -p "Etes-vous certain de continuer ( CTRL+C pour arrêter ) ?"
echo ""

apt update ; apt install python3.10-venv libgl1 socat
mkdir  ~/dev ; cd ~/dev
git clone git@github.com:rupeshs/fastsdcpu.git
cd fastsdcpu/
chmod +x install.sh 
./install.sh 
