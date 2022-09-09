#!/bin/bash

docker build -t faselis/idrac6 .

docker run -d \
  -p 5800:5800 \
  -p 5900:5900 \
  -e IDRAC_HOST=192.168.30.252 \
  -e IDRAC_USER=root \
  -e IDRAC_PASSWORD=calvin \
  -e DISPLAY_WIDTH=1124 \
  -e DISPLAY_HEIGHT=878 \
  faselis/idrac6
