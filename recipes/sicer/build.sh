#!/bin/bash
set -eu

wget http://home.gwu.edu/~wpeng/SICER_V1.1.tgz
tar zxvf SICER_V1.1.tgz
cd ./SICER_V1.1
grep -rl /home/data/SICER1.1 ./ | xargs sed -i "s@/home/data/SICER1.1@`pwd`@g"
