# Luxuscom

Fully Automated Luxury Gay Space Communism is here!

With this you can create speech recognition sound commands for your Linux terminal. Doesn't support streaming sound yet.

## Getting Started

First install needed packages:
sudo apt-get install jq - for reading json

sudo apt-get install espeak - for speech synthesis

create apikey.txt to parent folder and put your Google speech api key there..

Write wanted command words to commandwords.txt
Write corresponding commands for each command to commands.txt - they can be basic bash commands like echo
or run some script like ./myscript.sh

type ./recognizer.sh and test.

Default test phrase is "Enola test" where Enola is the name of the bot. You can say that and see if it works.

It is recommended to simplify commands and make some variations. For example if you want to "nuke world"
you can type just the beginning nuk* in commandwords.txt. You could also add nuc* and it works even better.

### Prerequisites

First install needed packages:
sudo apt-get install jq - for reading json
sudo apt-get install espeak - for speech synthesis

### Installing

git clone https://github.com/airzero/luxuscom.git

chmod 777 recognizer.sh

## Running the tests

Easiest way to test system is to put some echo-commands in commands.txt and look if it recognizes your speech.
Remember to say bot name.


## Built With

Google speech api
espeak


## Authors

AirZero

## License

This project is licenced under public domain.

