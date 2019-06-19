bindkey -v
export EDITOR="nvim"
export KEYTIMEOUT=1
alias la="ls -laGF"
alias ls="ls -GF"
alias ll="ls -lGF"
alias v="nvim"
alias vim="nvim"
alias nvimdiff="nvim -d"
alias vrc="vim ~/.config/nvim/init.vim"
alias zrc="vim ~/.oh-my-zsh/custom/mycfg.zsh"
alias trc="vim ~/.tmux.conf"
alias srcz="source ~/.oh-my-zsh/custom/mycfg.zsh"
alias eng="cd ~/code/RedoxEngine"
alias srv="cd ~/code/redox-services"
alias mr="cd ~/code/redox-services"
alias util="cd ~/code/util"
alias cls="clear"
alias g="git"
alias gs="git status"
alias gam="git commit -am"
alias gcm="git commit -m"
alias lx="lynx -cookies=off -lss='~/.config/lynx/lynx.lss' -cfg='~/.config/lynx/lynx.cfg' -useragent='Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.85 Safari/537.36'"
setopt hist_ignore_all_dups inc_append_history
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096
function mcd() {
  mkdir -p "$1" && cd "$1";
}
function ngrep() {
	grep -r --exclude-dir node_modules --exclude-dir bower_components $1 .
}
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
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(pyenv init -)"
export PATH="$PATH:~/bin/"
. /usr/local/opt/asdf/asdf.sh
#. $(brew --prefix asdf)/.asdf/completions/asdf.bash
