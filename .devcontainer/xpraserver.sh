#!/usr/bin/env bash

xpra start :100  \
     --bind-tcp=0.0.0.0:14500 \
     --html=on \
     --daemon=no \
     --exit-with-children \
     --opengl=off \
     --system-tray=off \
     --notifications=off \
     --printing=off \
     --pulseaudio=off \
     --webcam=off \
     --mdns=off \
     --start-child="/tools/libresprite/AppRun"