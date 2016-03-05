#!/bin/bash
# Simply bash to setup the .vimrc file
full_pwd="$(pwd -P)"
echo "Creating .vimrc and .tmux.conf HOME dir symlink..."
ln -s -f $full_pwd/.vimrc ~/.vimrc
ln -s -f $full_pwd/.tmux.conf ~/.tmux.conf
echo "Done!"
