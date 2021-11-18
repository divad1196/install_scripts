#! /bin/bash

sudo apt-get install -y gcc g++ libboost-all-dev cmake
sudo apt-get install -y doxygen libgraphicsmagick3 libssl-dev libpq-dev libssl-dev libfcgi-dev
wget -c https://github.com/emweb/wt/archive/x.y.z.tar.gz
tar xvxf wt-x.y.z.tar.gz
cd wt-x.y.z
mkdir build; cd build
cmake ..
make
make -C examples
sudo make install
sudo ldconfig
