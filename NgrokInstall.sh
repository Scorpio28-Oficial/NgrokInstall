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
echo "${k}                   ╔══╗╔═╗╔═╗╔═╗╔═╗╔══╗╔═╗╔═══╗╔═══╗";
echo "${k}                   ║ ═╣║╔╝║║║║╬║║╬║╚║║╝║║║║╔═╗║║╔═╗║";
echo "${k}                   ╠═ ║║╚╗║║║║╗╣║╔╝╔║║╗║║║╚╝╔╝║║╚═╝║";
echo "${k}                   ╚══╝╚═╝╚═╝╚╩╝╚╝─╚══╝╚═╝╔═╝╔╝║╔═╗║";
echo "${k}                   ───────────────────────║  ╚═╗╚═╝║";
echo "${k}                   C O M U N I D A D      ╚════╚═══╝";
echo "${k}                   █████████████████████████████████";
echo "${k}                   ┃";
echo "${k}                   ┃  ┌══════════════════════┐";
echo "${k}                   └═>█ Informatic in Termux █";
echo "${k}                      └══════════════════════┘";
echo
echo
echo
echo "${k}                   NGROK INSTALADO CORRECTAMENTE...";
echo "${k}                   ESCRIBA ngrok Y DE ENTER";
echo "${k}                   PEGAN SU AUTHTOKEN Y";
echo "${k}                   DAN ENTER Y LISTO.";
echo
echo "Ejemplo de Solución de Enlace.
(ngrok http 80)\n"
echo "Cuando les aya conectado presionan las teclas Ctrl + c y pegan esta ruta seguido del nombre de la carpeta y dan enter.
(cp -rf ../usr/bin/ngrok $HOME/)\n"
echo
;;

n)
clear
echo "Ngrok Instalado :("
echo
esac



