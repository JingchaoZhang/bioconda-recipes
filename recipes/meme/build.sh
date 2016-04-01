#!/bin/bash
set -eu

wget http://meme-suite.org/meme-software/4.8.1/meme_4.8.1.tar.gz
tar zxvf meme_4.8.1.tar.gz
cd meme_4.8.1
wget http://meme-suite.org/meme-software/4.8.1/patch_4.8.1_1
wget http://meme-suite.org/meme-software/4.8.1/patch_4.8.1_2
wget http://meme-suite.org/meme-software/4.8.1/patch_4.8.1_3
wget http://meme-suite.org/meme-software/4.8.1/patch_4.8.1_4
wget http://meme-suite.org/meme-software/4.8.1/patch_4.8.1_5
patch -p0 -i patch_4.8.1_1
patch -p1 -i patch_4.8.1_2
patch -p1 -i patch_4.8.1_3
patch -p0 -i patch_4.8.1_4
./configure --prefix=$PREFIX
make
make install
