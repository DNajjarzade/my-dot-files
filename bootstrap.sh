########## Variables

dir=~/my-dot-files                    # dotfiles directory
olddir=~/my-dot-files_old             # old dotfiles backup directory
files=".bashrc .vimrc .vim .conkyrc config.yml"        # list of files/folders to symlink in homedir

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
    mv ~/$file ~/my-dot-files_old/
      echo "Creating symlink to $file in home directory."
        ln -s $dir/$file ~/$file
      done

source ~/.bashrc
source ~/.conkyrc
source ~/.vimrc
