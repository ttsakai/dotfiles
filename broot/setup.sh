#!/usr/bin/env bash -x
set -ue

ROOT_DIR="$(dirname $( cd "$( dirname "$BASH_SOURCE[0]" )" >/dev/null 2>&1 && pwd ))"

rm  ~/.config/broot/conf.toml
ln -s  $ROOT_DIR/broot/conf.toml ~/.config/broot/conf.toml

wget https://github.com/Canop/broot/raw/master/resources/icons/vscode/vscode.ttf
mkdir -p ~/.local/share/fonts/
mv vscode.ttf ~/.local/share/fonts/

	


