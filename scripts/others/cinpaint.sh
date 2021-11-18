#! /bin/bash

sudo apt-get install build-essential libfltk1.1-dev libgtk2.0-dev libopenexr-dev liblcms1-dev libxpm-dev ftgl-dev libgutenprint-dev libgutenprintui2-dev python-dev libxmu-dev libtool flex
sudo echo 'deb http://cz.archive.ubuntu.com/ubuntu precise main universe' >> /etc/apt/sources.list.d/extra.list
sudo apt-get update
sudo apt-get install libtiff4-dev
sudo rm /etc/apt/sources.list.d/extra.list
sudo apt-get update
wget http://downloads.sourceforge.net/sourceforge/cinepaint/cinepaint-1.0-4.tar.gz
tar -xvf cinepaint-1.0-4.tar.gz
cd cinepaint-1.0-4
export LDFLAGS="$LDFLAGS -lstdc++ -lm -lX11"
./configure --enable-pygimp --with-python=/usr/bin/python2
make
sudo make install