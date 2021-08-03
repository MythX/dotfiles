#!/bin/bash

if [ ! -d ~/.oh-my-zsh ]; then
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

# Install powerlevel9k theme
#git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:~/.oh-my-zsh/custom}/plugins/zsh-syntax-hightlighting

# Install Powerline fonts
cd ~/Downloads
mkdir fonts
cd fonts

echo 'Download Powerline fonts'

git clone https://github.com/powerline/fonts

cd fonts
./install.sh

rm -rf ~/Downloads/fonts/

