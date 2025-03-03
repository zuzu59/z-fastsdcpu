#!/usr/bin/env bash
#Petit script pour arrêter facilement Fastsdcpu dans un container LXC sous Proxmox, qui a été démarré avec le start.sh !
#zf250303.1858

# source: 

echo -e "Arrêt de Fastsdcpu...

"

pkill -P $(pgrep -f start)
pkill -f socat
