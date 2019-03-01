#!/bin/bash

#Google version of speech synthesis

# Usage: tts.sh 'Teksti tähän'
echo "$1"
curl 'https://translate.google.com.vn/translate_tts?ie=UTF-8&q='"$1"'&tl=fi&client=tw-ob' -H 'Referer: https://translate.google.com/' -H 'Accept-Encoding: identity;q=1, *;q=0' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/66.0.3359.181 Chrome/66.0.3359.181 Safari/537.36' -H 'Range: bytes=0-' -H 'chrome-proxy: frfr' --compressed > "synthesis.mp3"
mpg123 synthesis.mp3
