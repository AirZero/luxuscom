#!/bin/bash -eu

#dt=$(date '+%d/%m/%Y %H:%M:%S');
dt=$(date '+%d.%m.%Y');
#echo "$dt"
#./voice.sh  "$dt"
./tts.sh "$dt"
exit
