#!/bin/bash
########## Variables
TIME=$(date "+%Y-%m-%d_%H-%M-%S")
dir=~/my-dot-files                    # dotfiles directory
olddir=~/my-dot-files_old_$TIME             # old dotfiles backup directory
files=".vimrc .zshrc .spf13-vim-3 .conkyrc config.yml"        # list of files/folders to symlink in homedir

##########
# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
  mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
  cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
  echo "Moving any existing dotfiles from ~ to $olddir"
  mv ~/$file $olddir
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/$file
done
