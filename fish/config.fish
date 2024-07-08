
set -x PATH /usr/local/bin /usr/sbin $PATH 
set -x PATH /opt/homebrew/bin $PATH 
set -x PATH ~/.config/nvim/pack/bundle/start/ $PATH 

set -x EDITOR hx 
# set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
# set -x GOOGLE_APPLICATION_CREDENTIALS ~/.config/gcloud/legacy_credentials/takahiro.sakai@swingmail.co/adc.json

# terraform 
set -x TF_CLI_ARGS_apply "--parallelism=30"
set -x TF_CLI_ARGS_plan  "--parallelism=30"

# golang
set -x GOPATH $HOME/go
set -x GOBIN  $HOME/go/bin
set -x PATH /usr/local/go/bin $PATH  
set -x PATH $GOPATH/bin $PATH
set -x GOPRIVATE "github.com/ca-crowdfunding/*"

# rust
set -x PATH $HOME/.cargo/bin $PATH  

# python
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH  $PYENV_ROOT/bin $PATH
pyenv init - | source

# k8s 
set -x KUBECTL_EXTERNAL_DIFF "dyff between --omit-header --set-exit-code"

# gke
set -x USE_GKE_GCLOUD_AUTH_PLUGIN True
set PATH /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin $PATH

# aws 
set -x AWS_PROFILE makuake

# gcloud
set -x PATH $PATH /Users/t17134/google-cloud-sdk/bin

# powerline-setup


## -- よくわからないが入れてる
# Add pyenv executable to PATH by running
# the following interactively:

set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths

# Load pyenv automatically by appending
# the following to ~/.config/fish/config.fish:

# pyenv init - | source

# poetry
# set -x PATH $PATH /Users/takahirosakai/.local/bin

## -- 
# export VISUAL=nvim

# alias vim=nvim
# alias vi=nvim
alias tf=terraform
alias kc=kubectl
alias kx=kubectx
# alias br=broot
alias gcd=gcloud
alias gcpl='gcloud projects list'
alias tw=the-way


fish_vi_key_bindings


# direnv 
# eval (direnv hook fish)

function gcsp
	command gcloud config set project  $argv[1]
end

function pex
	command pet exec -q=$argv
end

# kubectx
set -x KUBECTX_IGNORE_FZF 1
set -gx PATH $PATH $HOME/.krew/bin

# git 
export GPG_TTY=(tty)

# starship
starship init fish | source
set -Ux fish_user_paths /opt/homebrew/opt/mysql-client/bin $fish_user_paths


# anyenv
# Load anyenv automatically
# Add anyenv to PATH
# deleted. it does't work

# asdf
source /opt/homebrew/opt/asdf/libexec/asdf.fish

# for p in (string split ':' $PATH)
#     echo $p
# end
