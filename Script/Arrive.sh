#!/bin/bash
username=$(whoami)
notify-send 'BIENVENUE SUR VOTRE NOUVEAU POSTE FEDORA'
zenity --info --text "INFORMATIONS!"
sleep 1
zenity --info --text "des modifications ont ete apporter a votre environnement"
sleep 1
if zenity --question --text "avez vous pris connaissance des changements"
then
	zenity --info --text "fin de la boite de dialogque"
else
	zenity --question --text "cle trousseau realise?"
		
	if ask_pass=$(zenity --entry --text "password : ")
		if [ $ask_pass -z ]
		then 
			echo "$ask_pass" > /home/$username/.key
			dzdo cryptsetup luksAddKey /dev/nvme0n1p2 /home/$username/.key 
        sleep 1
        zenity --question --text "vm WIN10"
        sleep 1
        zenity --question --text "test"
	sleep 1

fi

#zenity --entry --text "avez vous pris connaissance des changements"
