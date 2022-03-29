#!/usr/bin/env bash

FILENAME=languages.toml
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

timestamp=$(date +%Y%m%d%H%M%S)
tmpd=$(mktemp -dt "$basepath.$timestamp.$$")/
cd $tmpd

wget https://raw.githubusercontent.com/helix-editor/helix/master/${FILENAME}
cp ${FILENAME} ~/.config/helix/${FILENAME}
cp $SCRIPT_DIR/config.toml ~/.config/helix/config.toml

git clone git@github.com:helix-editor/helix.git
cp -r runtime/ ~/.config/helix/runtime/
hx --grammar fetch
hx --grammar build
