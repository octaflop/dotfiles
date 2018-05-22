ffmpeg -r 29.97 -f image2 -pattern_type glob -i "*.JPG" -vf scale=1280:-1,format=yuv420p -vcodec libx264 $1.avi
