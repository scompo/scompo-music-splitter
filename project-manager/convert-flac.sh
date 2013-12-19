#!/bin/bash
# File:		convert-flac.sh
# Author:	Mauro Scomparin <scompo@gmail.com>
# Version:	0.1
#
# Description:
#
# This file converts the content of /cd/flac into /cd/mp3

echo 'Launching soundconverter...'
soundconverter ./cd/flac
echo 'copying mp3'
mv ./cd/flac/*.mp3 ./cd/mp3
echo 'copying jpg'
cp ./cd/flac/*.jpg ./cd/mp3
echo 'Thank you!'
