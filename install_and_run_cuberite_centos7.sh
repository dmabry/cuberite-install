#!/bin/bash
sudo yum install -y clang git cmake make gcc glibc-devel screen libstdc*
git clone --recursive https://github.com/cuberite/cuberite.git
cd cuberite
cmake . -DCMAKE_BUILD_TYPE=RELEASE
make -j 2
cd cuberite/Server
echo "Don't forget to open TCP port 8080 and 25565!"
sleep 3
./Cuberite
