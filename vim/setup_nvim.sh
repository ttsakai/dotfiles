#!/bin/bash


CDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

FILENAME=vimrc
DIRECTION_PATH=~/.config/nvim/init.vim


cp $CDIR/../$FILENAME $DIRECTION_PATH

