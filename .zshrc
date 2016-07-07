# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
export HISTCONTROL=erasedups 
#export LD_LIBRARY_PATH=/usr/lib/vmware/lib/libglibmm-2.4.so.1/:$LD_LIBRARY_PATH

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="re5et"
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
 COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(command-not-found debian encode64 last-working-dir screen zsh-syntax-highlighting antigen) # alias-tips)

source $ZSH/oh-my-zsh.sh
#source ~/.oh-my-zsh/custom/plugins/antigen/antigen.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Customize to your needs...
export PATH=$PATH:~/bin:/usr/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/games

# Example aliases
 alias zshconfig="nano ~/.zshrc && reload"
 alias zshrc="vim ~/.zshrc && reload"

 alias ohmyzsh="nano ~/.oh-my-zsh"
 alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"

# ls alias
 alias l='pwd; ls -lah'
 alias c='clear;'
 alias cl='clear; l'

# Useful for history searching. Use: hs java
 alias hs='history | grep -i $1'

## get rid of command not found ##
 alias cd..='cd ..'
 
## a quick way to get out of current directory ##
 alias ..='cd ..'
 alias ...='cd ../../../'
 alias ....='cd ../../../../'
 alias .....='cd ../../../../'
 alias .4='cd ../../../../'
 alias .5='cd ../../../../..'
 
 alias home='cd ~/'
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
# update my-dot-files
alias pull-dot-files='cd ~/my-dot-files/ && /usr/bin/git pull'
alias push-dot-files='cd ~/my-dot-files/ && /usr/bin/git push'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

## this one saved by butt so many times ##
alias wget='wget -c'
 
alias mount='mount |column -t'
alias ports='netstat -tulanp'
 
# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'
 

## shortcut  for iptables and pass it via sudo#
alias ipt='sudo /sbin/iptables'
 
# display all rules #
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall=iptlist
 

# apt aliases
alias agi='sudo tsocks apt-get install'
alias agr='sudo tsocks apt-get remove'
alias agu='sudo tsocks apt-get update'
alias agup='sudo tsocks apt-get upgrade'
alias agdu='sudo tsocks apt-get dist-upgrade'
alias acs='apt-cache search'
alias agar='sudo tsocks apt-get autoremove'
alias acsh='apt-cache show'
alias 'dpgk -i'='sudo dpkg -i'

# application shortcuts
alias sort-du='du -hsx * | sort -rh | head -15'
alias move-video='flexget --task move-episodes -v'

alias vga-rotate-right='xrandr --output VGA-0 --rotate right'
alias vga-normal='xrandr --output VGA-0 --rotate normal'

alias hping='sudo hping3'
alias docker='sudo docker'

alias start-plex='sudo mount -t cifs //earth/media ~/smb -o username=dariush,password=1,rw,,uid=1000 && sudo service plexmediaserver start'
alias stop-plex='sudo service plexmediaserver stop'

# ssh shortcuts
alias ssh2earth='ssh -X dariush@earth'
alias ssh2sonne='ssh root@sonne.dnet.redirectme.net'
alias ssh2heimdal='ssh root@heimdal'
alias ssh2kali='ssh -X dariush@kali'
alias ssh2helium='ssh -p 54322 dariush@helium.ml'
alias ssh2zotiac='ssh -p 54323 dariush@zotiac.no-ip.org'
alias ssh2borjman='ssh root@borjman.tk'
alias ssh2hoda.noc-PcomTelecom='ssh -p 51322 dariush@185.3.214.92'
alias ssh2hoda.noc-respina='ssh -p 51322 dariush@22 5.160.127.194'
alias ssh2no81.eniac='ssh -t -A -p 54322 dariush@helium.ml ssh -t -C -A root@91.241.92.47 ssh -A -v dariush@172.19.0.8'
alias ssh2anarestan='ssh root@mail.anarestan.com'
alias rsyncFromHelium='rsync -avzPh -e "ssh -p 54322" dariush@helium.ml:'

#python shurtcuts
alias ipy3="ipython3 notebook --ip='*'" 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Delete all stopped containers.
alias dockerStop='printf "\n>>> Stoping all images\n\n" && docker stop $(docker ps -q)'
alias dockerClean='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'
alias drm="docker rm"
alias dps="docker ps"
