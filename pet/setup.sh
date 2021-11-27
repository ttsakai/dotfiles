#!/usr/bin/env bash
ROOT_DIR="$(dirname $( cd "$( dirname "$BASH_SOURCE[0]" )" >/dev/null 2>&1 && pwd ))"
rm  ~/.config/pet/snippet.toml
ln -s  $ROOT_DIR/pet/snippet.toml ~/.config/pet/snippet.toml


