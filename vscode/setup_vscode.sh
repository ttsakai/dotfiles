#!/usr/bin/env bash -x


set -ue

if [ ! -d $1 ]; then 
	echo "directory does not exist : $1"
fi
	
SETTINGS_DIR="$1/.vscode"
ROOT_DIR="$(dirname $( cd "$( dirname "$BASH_SOURCE[0]" )" >/dev/null 2>&1 && pwd ))"

if [ ! -d $SETTINGS_DIR ]; then
	mkdir $SETTINGS_DIR	
fi 

ln -s  $ROOT_DIR/vscode/settings.json $SETTINGS_DIR/settins.json  
ln -s  $ROOT_DIR/vscode/go.json $SETTINGS_DIR/go.json  
