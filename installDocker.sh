#! /bin/bash

echo "#####obligatory apt-get update#####"
sudo apt-get update

sleep 5  # Waits 5 seconds.

echo "#####install sourcing dependencies#####"
sudo apt-get install \
	ca-certificates \
	curl \
	gnupg \
	lsb-release


echo "#####add Docker's official GPG key#####"
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg


echo "#####set up the repository#####"
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "#####apt-get update#####"
sudo apt-get update

sleep 5  # Waits 5 seconds.

echo "#####install latest verion of Docker Engine#####"
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

echo "#####  RUN HELLO WORLD. IF HELLO WORLD DOES NOT PRINT NEXT, SOMETHING WENT WRONG #####"
sudo docker run hello-world