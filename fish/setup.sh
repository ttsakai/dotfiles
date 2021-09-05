


# install fisherman
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

rm  ~/.config/fish/config.fish
ln -s  $ROOT_DIR/fish/config.fish ~/.config/fish/config.fish