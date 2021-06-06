#!/bin/dash
# Soy Scorpio28
atualizar='\033[1;32m'
echo "$atualizar Actualizando repositórios..."
apt update && upgrade -y
apt install -y wget
clear
k='\033[01;32m'
echo
echo
echo "Instalar Ngrok? [Y/n]"
read opcao
case $opcao in
y)
echo
echo "Descargando Termux-ngrok..."
case `dpkg --print-architecture` in
aarch64)
    architectureURL="arm64" ;;
arm)
    architectureURL="arm" ;;
armhf)
    architectureURL="armhf" ;;
amd64)
    architectureURL="amd64" ;;
i*86)
    architectureURL="i386" ;;
x86_64)
    architectureURL="amd64" ;;
*)
    echo "Arquitectura Desconocida"
esac

wget "https://github.com/tchelospy/NgrokTest/blob/master/ngrok-stable-linux-${architectureURL}.zip?raw=true" -O ngrok.zip
unzip ngrok.zip
cat ngrok > /data/data/com.termux/files/usr/bin/ngrok
chmod 700 /data/data/com.termux/files/usr/bin/ngrok
rm ngrok ngrok.zip
clear
echo
echo
echo
echo
echo "${k}╔══╗╔═╗╔═╗╔═╗╔═╗╔══╗╔═╗╔═══╗╔═══╗";
echo "${k}║ ═╣║╔╝║║║║╬║║╬║╚║║╝║║║║╔═╗║║╔═╗║";
echo "${k}╠═ ║║╚╗║║║║╗╣║╔╝╔║║╗║║║╚╝╔╝║║╚═╝║";
echo "${k}╚══╝╚═╝╚═╝╚╩╝╚╝─╚══╝╚═╝╔═╝╔╝║╔═╗║";
echo "${k}───────────────────────║  ╚═╗╚═╝║";
echo "${k}A N O N Y M O U S      ╚════╚═══╝";
echo "${k}█████████████████████████████████";
echo "${k}┃";
echo "${k}┃  ┌══════════════════════════════════┐";
echo "${k}└═>█ Ngrok Instalado Correctamente... █";
echo "${k}   └══════════════════════════════════┘";
echo
echo
echo
echo "${k}                   NGROK INSTALADO CORRECTAMENTE...";
echo "${k}                   ESCRIBA ngrok Y DE ENTER";
echo "${k}                   PEGAN SU AUTHTOKEN Y";
echo "${k}                   DAN ENTER Y LISTO.";
echo
echo "Ejemplo de Uso.
(ngrok http 80)\n"
echo
;;

n)
clear
echo "Ngrok Instalado :("
echo
esac



