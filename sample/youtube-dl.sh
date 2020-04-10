#!/bin/bash
# This script will attempt to resume .part files leftover from youtube-dl
# leftover files looks like this. Note the extra .f137 that was inserted. That's not part of the file name
#The TSA's 12 Signs You Might Be a Terrorist-tEHV5UNntOo.f137.mp4.part

cd /home/me/Videos/new/
if ls | grep \\.part &>/dev/null && ! pgrep youtube-dl &>/dev/null; then # if .part files exist and youtube-dl is not running...
    for file in *.part; do
        if echo -- "$file" | grep -qv '.mp4.part-Frag'; then # Skip twitch videos, we don't know the URL
            /usr/local/bin/youtube-dl --quiet -- "$(echo "$file" | rev | cut -c 15-25 | rev)"
            if [ $? -eq 0 ]; then
                echo "Successfully finished downloading $file"
            else
                echo "Failed downloading $file"
            fi
        fi
    done
fi
