# Path Manipulation
export PATH="$PATH:$HOME/.rvm/bin" 			# Ruby Version Manager
export PATH="/usr/local/heroku/bin:$PATH"	# Heroku Toolbelt
export PATH="/usr/local/bin/python3:$PATH"	# Python 3

# Set vi mode
bindkey -v
export KEYTIMEOUT=1

# Oh-my-zsh settings
export ZSH=$HOME/.oh-my-zsh
export DEFAULT_USER="Jon"
ZSH_THEME="agnoster"
plugins=(osx battery)
export PATH=$HOME/bin:/usr/local/bin:$PATH
source $ZSH/oh-my-zsh.sh

# My Aliases
 # Frequently use locations
alias blog="cd /Users/jonbanashek/Projects/octopress/"
alias gtd="vim -O ~/gtd/list ~/gtd/log"
alias svn="msvn"
alias gitfuckit='git clean -d -x -f; git reset --hard'
alias gitrmf='git rm $(git ls-files --deleted)'
 # Python 3 binaries
alias py="python3"
alias pi="pip3"
 # Quick open files in vim
alias brc="vim ~/.bashrc"
alias zrc="vim ~/.zshrc"
alias vrc="vim ~/.vimrc"
alias blist="vim ~/gtd/projects/blog/list"
