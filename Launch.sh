#!/bin/bash


[ x"$1" = "xbuild" ] && docker build -t who0/ddtor .
docker run -it --rm  --net=host who0/ddtor
