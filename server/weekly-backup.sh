#! /bin/bash

######################################################################################
#
#	Script to make a copy of my files weekly and store them in a weekly folder
#		Run on backup server
#
######################################################################################

CLIENT_FILE="clients.txt"

if [ ! -f $CLIENT_FILE ]; then
	# TODO log that could not find file
	exit 1
fi

clients=$(cat clients.txt)
folder=$(date +"%m-%d-%Y")

backup_client () {
	client=$1

	# error: nothing to backup
	if [ ! -d /home/$client/backup ]; then
		return 1
	fi

	# cp -r /home/$client/backup /home/$client/backup
	rsync -r /home/$client/backup /home/$client/backup
}

for client in $clients;
do
	cd /home/$client/backup
	echo $client
done

exit


cd /home/bailey/backup

mv bailey $folder
