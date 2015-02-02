export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/bin/python3:$PATH"

set -o vi
source kvm.sh

alias cddoc="cd /Volumes/C/Users/jonbanashek/Source/Repos/DevOps/DocSite/DocSite/"
alias cddocloc="cd /Users/jonbanashek/Work/documents/documentation/devops/"
alias cdw="cd /Volumes/C/"
alias cdt="cd /Users/jonbanashek/Work/lnec_deploy_tools"
alias dev="cd ~/Projects/cs/"
alias blog="cd /Users/jonbanashek/Projects/octopress/"
alias ls="ls -G"
alias ll="ls -lG"
alias gtd="vim -O ~/gtd/list ~/gtd/log"
alias svn="msvn"
alias gitfuckit='git clean -d -x -f; git reset --hard'
alias gitrmf='git rm $(git ls-files --deleted)'
alias vim='v'
alias omni="mono '/Users/jonbanashek/.vim/bundle/Omnisharp/server/omnisharp/bin/Debug/OmniSharp.exe' -p 2000 -s ."
alias kes="k kestrel"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# Python stuff
alias py="python3"
alias pi="pip3"

# Quick open files in vim
alias brc="vim ~/.bashrc"
alias vrc="vim ~/.vimrc"
alias blist="vim ~/gtd/projects/blog/list"

PERL_MB_OPT="--install_base \"/Users/jonbanashek/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/jonbanashek/perl5"; export PERL_MM_OPT;

# VirtualEnvWrapper stuff
export WORKON_HOME=$HOME/.virtualenvs
export PATH=/usr/local/bin:$PATH
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source /usr/local/bin/virtualenvwrapper.sh
