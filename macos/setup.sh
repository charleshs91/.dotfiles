#!/bin/bash

cp -f .stow-local-ignore ./nvim/.stow-local-ignore
cp -f .stow-local-ignore ./tmux/.stow-local-ignore
cp -f .stow-local-ignore ./wezterm/.stow-local-ignore
cp -f .stow-local-ignore ./zsh/.stow-local-ignore

stow -t $HOME nvim
stow -t $HOME tmux
stow -t $HOME wezterm
stow -t $HOME zsh