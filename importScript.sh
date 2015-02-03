for f in tmux.conf zshrc gitconfig bashrc vimrc; do ln -s ~/.dotfiles/$f ~/.$f; done
