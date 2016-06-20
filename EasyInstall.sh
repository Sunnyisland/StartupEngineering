#!/bin/bash
echo "Installing essentail progarms for new instance!"
sudo apt-get update
echo "Get git core"
sudo apt-get install -y git-core
echo "Get python"
sudo apt-get install -y python-software-properties python g++ make
echo "Add new repository chris=lea"
sudo add-apt-repository -s ppa:chris-lea/node.js
echo "update apt-get's knowledge of which packags are where"
sudo apt-get update
echo "install nodejs"
sudo apt-get install -y node.js
echo "Check if node.js installed properly"
npm --version
node --version
sudo apt-get intall -y locate
sudo apt-get updatedb
echo "screen"
wget raw.github.com/startup-class/dotfiles/master/.screenrc -O .screenrc
echo "Install Emacs"
git clone https://github.com/startup-class/setup.git
./setup/setup.sh
exit
