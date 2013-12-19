#!/bin/bash
# File:		edit-tags.sh
# Author:	Mauro Scomparin <scompo@gmail.com>
# Version:	0.1
#
# Description:
#
# This file copies the image on the flac folder 
# and launches easytag to edit the tag info.
echo 'copying .jpg to /cd/flac...'
cp ./*.jpg ./cd/flac
echo 'launching easytag...'
easytag cd/flac
echo 'Thank you!'
