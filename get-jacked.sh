#!/bin/bash

# load our jack session manager
#claudia &
#sleep 8

# clear any existing jack-pulse links
pacmd unload-module module-jack-sink
pacmd unload-module module-jack-source

# configure pulse connectors
pacmd load-module module-jack-source channels=1 source_name=soundboard-in client_name=soundboard-in connect=false
pacmd load-module module-jack-sink channels=1 sink_name=soundboard-out client_name=soundboard-out connect=false

pacmd load-module module-jack-source channels=1 source_name=chrome-in client_name=chrome-in connect=false
pacmd load-module module-jack-sink channels=1 sink_name=chrome-out client_name=chrome-out connect=false

pacmd load-module module-jack-source channels=1 source_name=spotify-in client_name=spotify-in connect=false
pacmd load-module module-jack-sink channels=1 sink_name=spotify-out client_name=spotify-out connect=false

# launch pulse applications
PULSE_SINK=soundboard-out vlc &
PULSE_SINK=chrome-out google-chrome-stable &

# launch jack applications
~/bin/REAPER/reaper
