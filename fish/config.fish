set -g theme_newline_cursor yes
set -g theme_display_git_master_branch yes
set -g theme_color_scheme dracula
set -g theme_powerline_fonts no
set -g theme_display_date no
set -g theme_display_cmd_duration no

set PATH /usr/local/bin /usr/sbin $HOME/.cargo/bin $PATH ~/.config/nvim/pack/bundle/start/fzf/bin 
# set -x EDITOR nvim
set -x EDITOR hx 
set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"

# golang
set GOPATH $HOME/go
set PATH $PATH /usr/local/go/bin $GOPATH/bin

# vagrant
set -x VAGRANT_WSL_WINDOWS_ACCESS_USER "desktop-ensaist\takahiro sakai"
set -x VAGRANT_WSL_ENABLE_WINDOWS_ACCESS "1"
set -x VAGRANT_WSL_WINDOWS_ACCESS_USER_HOME_PATH "/mnt/c/vagrant"
set PATH $PATH "/mnt/c/Program Files/Oracle/VirtualBox" /mnt/c/Windows/System32/ /mnt/c/Windows/System32/WindowsPowerShell/v1.0/

powerline-setup


export VISUAL=nvim

alias vim=nvim
alias vi=nvim
alias tf=terraform

fish_vi_key_bindings
