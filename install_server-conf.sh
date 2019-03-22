#/bin/sh

### ZSH ###
ln -s $HOME/.dotfiles/zsh $HOME/.zsh
rm $HOME/.zshrc
ln -s $HOME/.zsh/zshrc $HOME/.zshrc

### VIM ###
ln -s $HOME/.dotfiles/vim $HOME/.vim
ln -s $HOME/.vim/vimrc $HOME/.vimrc
