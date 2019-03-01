# Luxuscom

Fully Automated Luxury Gay Space Communism is here!

With this you can create speech recognition sound commands for your Linux terminal. Doesn't support streaming sound yet.

## Getting Started

1. Register to Google API and get Speech API APIKEY.

What to do in command line:

- nano apikey.txt
- paste apikey
- ctrl+x
- y
- Enter

- git clone https://github.com/airzero/luxuscom.git

- cd luxuscom

- chmod 775 recognizer.sh

- chmod 775 voice.sh

Install needed packages:

For reading json:
- sudo apt-get install jq

For speech synthesis:
- sudo apt-get install espeak

For saving wavs:
- sudo apt-get install python-alsaaudio

- sudo apt-get install mpg321


Write wanted command words to commandwords.txt
Write corresponding commands for each command to commands.txt - they can be basic bash commands like echo
or run some script like ./myscript.sh

type ./recognizer.sh and test.

Default test phrase is "Enola test" where Enola is the name of the bot. You can say that and see if it works.

If you don't say bot's name before command it doesn't work.

It is recommended to simplify commands and make some variations. For example if you want to "nuke world"
you can type just the beginning nuk* in commandwords.txt. You could also add nuc* as another command and it works even better.


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

