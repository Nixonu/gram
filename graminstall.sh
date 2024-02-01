#!/bin/bash
echo "deb http://cz.archive.ubuntu.com/ubuntu jammy main" >> /etc/apt/sources.list && apt update && apt install tmux -y && apt install libc6 -y
apt install -y ca-certificates curl gnupg
mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
apt update
apt install -y nodejs
cd ~/
git clone https://github.com/TrueCarry/JettonGramGpuMiner.git
cd JettonGramGpuMiner
git reset --hard 2bdfebf1ed41a02733c6f3af4d496f2427ce2f42
wget https://github.com/tontechio/pow-miner-gpu/releases/download/20211230.1/minertools-cuda-ubuntu-18.04-x86-64.tar.gz 
tar -xzvf minertools-cuda-ubuntu-18.04-x86-64.tar.gz 
touch config.txt
touch miner.sh
chmod +x miner.sh