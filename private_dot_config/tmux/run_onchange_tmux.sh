#!/usr/bin/env bash

if [[ ! -d $HOME/.config/tmux/tmux ]]; then
	echo "install oh my tmux"
	git clone https://github.com/Meigumikato/.tmux.git tmux
	ln -s "$HOME/.config/tmux/tmux/.tmux.conf" "$HOME/.config/tmux/tmux.conf"
fi

if [[ ! -L $HOME/.config/tmux/tmux.conf ]]; then
	ln -s "$HOME/.config/tmux/tmux/.tmux.conf" "$HOME/.config/tmux/tmux.conf"
fi

if [[ ! -L $HOME/.config/tmux/tmux.conf.local ]]; then
	ln -s "$HOME/.config/tmux/tmux/.tmux.conf.local" "$HOME/.config/tmux/tmux.conf.local"
fi
