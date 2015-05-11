# Path Manipulation
export PATH="$PATH:$HOME/.rvm/bin" 			# Ruby Version Manager
export PATH="/usr/local/heroku/bin:$PATH"	# Heroku Toolbelt
export PATH="/usr/local/bin/python3:$PATH"	# Python 3
export PATH=$PATH:"/usr/local/opt/go/libexec/bin" # Go brew stuff

# Set vi mode
bindkey -v
export EDITOR="vim"
export KEYTIMEOUT=1

# My Aliases
 # ls changes
alias la="ls -laGF"
alias ls="ls -GF"
alias ll="ls -lGF"
 # Frequently use locations
alias blog="cd /Users/jonbanashek/Projects/jekyll/banashek.github.io/"
alias gtd="vim -O ~/gtd/list ~/gtd/log"
alias macros="vim ~/gtd/macros"
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
alias trc="vim ~/.tmux.conf"
alias blist="vim ~/gtd/projects/blog/list"
# Bundler
alias b="bundle"
 # Others
alias cls="clear"
alias g="git"
alias gam="git commit -am"
alias mkdir='mkdir -p'
alias json="python -m json.tool"

# modify the prompt to contain git branch name if applicable
git_prompt_info() {
  current_branch=$(git cb 2> /dev/null)
  if [[ -n $current_branch ]]; then
    echo " %{$fg_bold[green]%}%{$current_branch%}%{$reset_color%}"
  fi
}
setopt promptsubst
export PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%c%{$reset_color%}$(git_prompt_info) %# '

# Visual studio code
code () {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
        open -a "Visual Studio Code" --args "$F"
    fi
}

# completion
autoload -U compinit
compinit
setopt completeinword
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc
export CLICOLOR=1

# history settings
setopt hist_ignore_all_dups inc_append_history
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096

# Make directory and change into it.
function mcd() {
  mkdir -p "$1" && cd "$1";
}

# DNVM
source dnvm.sh
