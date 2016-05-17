#!/bin/bash
if [ ! -d ~/.vim ]; then
    mkdir -p ~/.vim/{bundle,temp,backup}
    cp -r $(pwd)/vim/files/* ~/.vim/
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim +PluginInstall +qall
fi
