#!/bin/bash

if [ ! -d ~/.tmux ]; then
  sudo apt update
  sudo apt install tmux
  git clone https://github.com/tmux-plugins/tpm ${HOME}/.tmux/plugins/tpm
fi

