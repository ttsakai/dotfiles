#!/usr/bin/env bash

FILENAME=languages.toml

wget https://raw.githubusercontent.com/helix-editor/helix/master/${FILENAME}
mv ${FILENAME} ~/.config/helix/${FILENAME}