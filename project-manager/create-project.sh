#!/bin/bash
# File:		create-project.sh
# Author:	Mauro Scomparin <scompo@gmail.com>
# Version:	0.1
#
# Description:
#
# This file creates a new project with audacity.

#check that one argument it's present
if [[ $# -eq 0 ]];
then
	# write help:
	echo 'Usage:'
	echo '       ' $0 '"projectname".'
	exit 1
else
	# assume $1 is projectname
	echo 'Creating' $1 ' project directories...'
	mkdir --parents $1/cd/{flac,mp3}
	echo 'copying .sh files to project...'
	cp ./project-manager/convert-flac.sh ./$1/
	cp ./project-manager/edit-tags.sh ./$1/
	ls --recursive $1
	echo 'Create a new Audacity project in' $1
	echo 'Thank you!'
fi
