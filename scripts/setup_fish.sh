 #!/bin/bash

 curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
 curl -L https://get.oh-my.fish | fish


git clone git@github.com:powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf fonts
