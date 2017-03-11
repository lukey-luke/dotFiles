#!/bin/bash

echo "Starting"
cat /run/media/student/UNICYCLEMAN/Networks/networksAliases.sh >> $HOME/.bashrc
cat /run/media/student/UNICYCLEMAN/Networks/networksVim >> $HOME/.vimrc
source $HOME/.bashrc
echo "Done."

