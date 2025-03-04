#!/usr/bin/env bash
#Petit script pour démarrer facilement Fastsdcpu dans un container LXC sous Proxmox, avec surtout la redirection du port sur le local network
#zf250303, zf250304.1432

# source: 

echo -e "Démarrage de Fastsdcpu...

"

./stop.sh


#cp ./share-start.sh ../fastsdcpu/

cd ~/dev/fastsdcpu/
socat TCP-LISTEN:8080,fork,reuseaddr TCP:127.0.0.1:7860 &
#./share-start.sh
./start-webui.sh &

# > /tmp/fastsdcpu.log 2>&1 &

exit

echo -e "

Fastsdcpu démarré !

"

#tail -f /tmp/fastsdcpu.log

