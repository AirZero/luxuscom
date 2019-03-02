#!/bin/bash -eu


# Record from mic
#style 1, works for Elementary OS
#arecord -d 5 -f cd -t wav -r 16000 -c 1 -D pulse test.wav

#Style 2, works for OpinsysOS
arecord --format=S16_LE --duration=5 --rate=16000 --file-type=wav test.wav

# Get record volume
sox test.wav -n stats -s 16 2>&1 | grep 'Max level' | awk '{print $3}'

# Convert to flac for smaller footprint
flac -f test.wav

# Google speech recognition
#Correct place to set language isnt this, its placed in curl command url line: lang=en
LANG=en-us
AGENT='Mozilla/5.0'
APIKEY=`cat ../apikey.txt`
curl -o response.txt -X POST \
	--data-binary @'test.flac' \
	--user-agent $AGENT \
	--header 'Content-Type: audio/x-flac; rate=16000;' \
	"https://www.google.com/speech-api/v2/recognize?output=json&lang=en&key="$APIKEY"&client="$AGENT

#Removes first useless array
FILE=response.txt;
tail -n +2 "$FILE" > "$FILE.tmp" && mv "$FILE.tmp" "$FILE"

#Reads 1. alternative from json
speech=$(cat response.txt |jq '.result[0] .alternative[1] .transcript')
#echo "$speech"

#Saves clear text version of speech to speech.txt
echo "$speech" > speech.txt

#Reads commands from speech.txt. If botname is said compares speech.txt with commandwords.txt
#and if match is found executes command from same line in text file from commands.txt
botname="enola";

while read -r commandword && read -r command <&3;

do 

if grep -qi "$botname" speech.txt; then
        if grep -qi "$commandword" speech.txt; then
                echo "worked"
		eval $command
		./voice.sh "yes lord" +$USER;

        fi
fi

done < commandwords.txt 3<commands.txt;

#Says aloud what is in speech.txt
./voice.sh "$speech"
