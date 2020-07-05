#!/bin/bash

sleep 10
while true
do
  echo $(date -Iseconds) bashpodder
  /home/pi/podcasts/bashpodder.shell
  echo $? $(date -Iseconds) 
  for file in /home/pi/podcasts/mp3s/*.mp3
  do
    echo $(date -Iseconds) $file
    /usr/bin/omxplayer $file
  done
done
