#!/bin/sh
ffmpeg -i $1 -filter:v "setpts=$3*PTS" -r 60 -an $2.mkv

