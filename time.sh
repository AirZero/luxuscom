#!/bin/bash -eu

#dt=$(date '+%d/%m/%Y %H:%M:%S');
dt=$(date '+%H:%M');
echo "$dt"
./voice.sh  "kello on $dt"
exit
