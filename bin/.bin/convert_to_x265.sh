ffmpeg -i $1 -c:v libx265 -preset ultrafast -x265-params lossless=1 $2

# From https://unix.stackexchange.com/a/248711

