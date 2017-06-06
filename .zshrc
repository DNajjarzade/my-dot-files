# Created by newuser for 4.3.17
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt autocd extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# Path to your oh-my-zsh configuration.
ZSH=$HOME/my-dot-files/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dana"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(command-not-found debian encode64 last-working-dir screen tmux zsh-syntax-highlighting vi-mode Python pip colored-man-pages)

source $ZSH/oh-my-zsh.sh
source ~/my-dot-files/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Customize to your needs...
export PATH=$PATH:/home/dariush/bin:/usr/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/games

# Example aliases
 alias zshconfig="vim ~/.zshrc && reload"
 alias zshrc="vim ~/.zshrc && reload"

 alias ohmyzsh="vim ~/.oh-my-zsh"
 alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"

# ls alias
 alias l='pwd; ls -lah'
 alias c='clear;'
 alias cl='clear; l'

# Useful for history searching. Use: hs java
 alias hs='history | grep -i $1'

# cd aliases
 alias ..='cd ..'
 alias ...='cd ../../'
 alias documents='cd ~/Documents'
 alias downloads='cd ~/Downloads'
 alias desktop='cd ~/Desktop'
 alias music='cd ~/Music'
 alias videos='cd ~/Videos'

# Automatically do an ls after each cd
cd() {
  if [ -n "$1" ]; then
    builtin cd "$@" && ls
  else
    builtin cd ~ && ls
  fi
}

# apt aliases
alias agi='sudo apt-get install'
alias agr='sudo apt-get remove'
alias agu='sudo apt-get update'
alias agup='sudo apt-get upgrade'
alias agdu='sudo apt-get dist-upgrade'
alias acs='apt-cache search'
alias acsh='apt-cache show'
alias sdi='sudo dpkg -i'

alias ssh2fileserver='ssh root@192.168.20.241'
alias ssh2earth='ssh dariush@192.168.20.246'
alias ssh2sonne='ssh root@192.168.20.244'
alias ssh2oxygen='ssh root@192.168.20.243'
alias ssh2dnet='ssh dariush@dnet.redirectme.net -p 42222'
alias ssh2helium='ssh dariush@helium.ml -p 54322'
