#!/bin/bash
sudo yum install -y clang git cmake make gcc glibc-devel screen
git clone --recursive https://github.com/cuberite/cuberite.git
cd cuberite
cmake . -DCMAKE_BUILD_TYPE=RELEASE
make -j 2
