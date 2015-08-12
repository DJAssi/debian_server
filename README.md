# debian_server
Ich nutze diese Files eigentlich für mich selbst, aber wenn Ihr es für Euch forken wollt, dann bedient Euch einfach


Für die Installation einen Steam-Gamingservers:
Bitte denke daran, Deinen ssh-key einzutragen!!!

wget https://raw.githubusercontent.com/DJAssi/debian_server/master/game/setup_steamserver.sh | sh

Für einen ARK Server und die GLIBC 2.14 fehlt, dann trage bitte 

deb http://ftp.debian.org/debian/ testing non-free contrib main

in die sources.list ein und installiere

apt-get install libc6-dev

