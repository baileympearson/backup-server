#! /bin/bash

#
#	Script to make a copy of my files weekly and store them in a weekly folder
#		Run on backup server
#

folder=$(date +"%m-%d-%Y")

cd /home/bailey/backup

mv bailey $folder
