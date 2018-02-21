#!/bin/sh

# startup scripts
/home/faris/run_vmtoolsd &&
sleep 3 &&
compton --config /home/faris/.config/compton.conf -b
# feh --bg-scale ~/Feel/desktops/oskar-krawczyk-172847-unsplash.jpg
wal -R -a 85
