#!/usr/bin/bash 

os=`uname`
if [ $os == "Linux" ];then
	sudo apt-get -y install neovim
fi
