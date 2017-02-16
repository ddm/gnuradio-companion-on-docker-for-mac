#!/usr/bin/env bash

COMMAND=$1

pushd `dirname $0` > /dev/null
DIR=`pwd -P`
popd > /dev/null

cd $DIR
docker build . -t gnuradio

# I have no idea what I'm doing
rm -rf $DIR/.X11-unix
mkdir -p $DIR/.X11-unix
ln -s /tmp/.X11-unix/X0 $DIR/.X11-unix/X0
ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost + $ip

docker run -t -i -e DISPLAY=$ip:0 -v $DIR/.X11-unix:/tmp/.X11-unix -v $DIR/flows:/flows gnuradio $COMMAND
