# set -g theme_newline_cursor yes
# set -g theme_display_git_master_branch yes
# set -g theme_color_scheme dracula
# set -g theme_powerline_fonts no
# set -g theme_display_date no
# set -g theme_display_cmd_duration no

# default option for bobthefish
set -g theme_display_git no
set -g theme_display_git_dirty no
set -g theme_display_git_untracked no
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_stashed_verbose yes
set -g theme_display_git_default_branch yes
set -g theme_git_default_branches master main
set -g theme_git_worktree_support yes
set -g theme_use_abbreviated_branch_name yes
set -g theme_display_vagrant yes
set -g theme_display_docker_machine no
set -g theme_display_k8s_context yes
set -g theme_display_hg yes
set -g theme_display_virtualenv no
set -g theme_display_nix no
set -g theme_display_ruby no
set -g theme_display_node yes
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_vi no
set -g theme_display_date no
set -g theme_display_cmd_duration yes
set -g theme_title_display_process yes
set -g theme_title_display_path no
set -g theme_title_display_user yes
set -g theme_title_use_abbreviated_path no
set -g theme_date_format "+%a %H:%M"
set -g theme_date_timezone America/Los_Angeles
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g theme_display_jobs_verbose yes
set -g default_user your_normal_user
set -g theme_color_scheme dark
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 1
set -g theme_newline_cursor yes
set -g theme_newline_prompt '$ '

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
alias kc=kubectl'
alias kx=kubectx'
alias gcd=gcloud
alias gcpl='gcloud projects list'
alias tw=the-way


fish_vi_key_bindings
