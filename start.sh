#!/usr/bin/env bash
#Petit script pour démarrer facilement Fastsdcpu dans un container LXC sous Proxmox, avec surtout la redirection du port sur le local network
#zf250303.1757

# source: 

echo -e "\Démarrage de Fastsdcpu...

"

cd ~/dev/fastsdcpu/
socat TCP-LISTEN:8080,fork,reuseaddr TCP:127.0.0.1:7860 &
./start-webui.sh &

