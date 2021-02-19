#!/bin/bash
while :
do
        youtube-dl "https://www.youtube.com/watch?v=dp8PhLsUcFE" -o - | ffmpeg -i - -vf fps=1 -frames:v 1 -c:v png -f image2 - | convert - -crop 1460x72+350+960 - | tesseract - stdout >> data.txt
done
