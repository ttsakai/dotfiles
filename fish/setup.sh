# install fisherman
# 動かなかったのでコメントアウトしてる
# curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
# 参考資料 https://zenn.dev/toipptakosan11/articles/aa42053d836bdf

rm  ~/.config/fish/config.fish
ln -s  $ROOT_DIR/fish/config.fish ~/.config/fish/config.fish

# theme系のpluginもういらないのでコメントアウト。
# install fisherman plugin
# fisher install oh-my-fish/oh-my-fish
# fisher install oh-my-fish/theme-batman
# fisher install oh-my-fish/theme-agnoster
# fisher install jorgebucaran/fisher
fisher install joehillen/to-fish

