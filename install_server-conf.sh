#/bin/sh

### APT ###
sudo apt update
sudo apt dist-upgrade -y
sudo apt install -y zsh curl wget vim git most

### ZSH ###

# Change shell
chsh -s /usr/bin/zsh

# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended

rm -rf $HOME/.zsh
rm -f $HOME/.zshrc
ln -s $HOME/.dotfiles/zsh $HOME/.zsh
ln -s $HOME/.zsh/zshrc $HOME/.zshrc

### VIM ###
rm -rf $HOME/.vim
rm -f $HOME/.vimrc
ln -s $HOME/.dotfiles/vim $HOME/.vim
ln -s $HOME/.vim/vimrc $HOME/.vimrc
