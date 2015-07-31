#!/bin/bash
# Simply bash to setup the .vimrc file
full_pwd="$(pwd -P)"
echo "Creating .vimrc HOME dir symlink..."
ln -s -f $full_pwd/.vimrc ~/.vimrc
echo "Done!"
