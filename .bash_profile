if [[ -s ~/.nvm/nvm.sh ]]; then 
	source ~/.nvm/nvm.sh
fi


export PS1='\[\033[40;0;33m\]\W/ \[\033[40;2;37m\]\t\[\033[0m\] \[\033[40;1;32m\]$(git_branch)\[\033[0m\] $ '

git_branch() {
  echo $(git branch --no-color 2>/dev/null | sed -ne "s/^\* \(.*\)$/\1/p")
}

