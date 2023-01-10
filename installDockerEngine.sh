#! /bin/bash

echo "#####apt-get update#####"
sudo apt-get update

echo "#####install latest verion of Docker Engine#####"
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

echo "#####  RUN HELLO WORLD. IF HELLO WORLD DOES NOT PRINT NEXT, SOMETHING WENT WRONG #####"
sudo docker run hello-world
