# Mitch's custom Bash prompt: Simple Version
export PS1="\[\e[01;31m\]\u\[\e[0m\]\[\e[01;33m\]@\[\e[0m\]\[\e[01;36m\]\h\[\e[0m\]\[\e[01;33m\]:\[\e[0m\]\[\e[01;37m\] \[\e[0m\]\[\e[01;35m\]\w\[\e[0m\]\[\e[01;37m\] \n\[\e[0m\]\[\e[01;36m\][\[\e[0m\]\[\e[01;32m\]\d \A\[\e[0m\]\[\e[01;36m\]]\[\e[0m\]\[\e[01;37m\] \[\e[0m\]\[\e[01;31m\]\\$\[\e[0m\]\[\e[01;37m\] \[\e[1;36m\]"
#export PS1="\[\e[01;31m\]\u\[\e[0m\]\[\e[01;33m\]@\[\e[0m\]\[\e[01;36m\]\h\[\e[0m\]\[\e[01;33m\]:\[\e[0m\]\[\e[01;37m\] \[\e[0m\]\[\e[01;35m\]\w\[\e[0m\]\[\e[01;37m\] \[\e[0m\]\[\e[01;36m\][\[\e[0m\]\[\e[01;32m\]\d \A\[\e[0m\]\[\e[01;36m\]]\[\e[0m\]\[\e[01;37m\] \[\e[0m\]\[\e[01;31m\]\\$\[\e[0m\]\[\e[01;37m\] \[\e[1;36m\]"
#export PS1="\u@\h: [\d \t] \W $"

# General Aliases
alias ..="cd .."
alias back="cd $OLDPWD"
alias cls="clear && /etc/motd.tcl"
alias ls="ls -hila --color=auto"
alias ping="ping -c 5"
alias psl="ps -aux"
alias remlog="history -w && history -c"
alias rlb="source ~/.bashrc"

# System Administration Aliases
alias clrcache="free && sync && echo 3 > /proc/sys/vm/drop_caches && free"
alias down="sudo shutdown -h now"
alias install="sudo apt-get install" 
alias ipl="sudo reboot"
alias remove="sudo apt-get remove purge"
alias root="sudo su"
alias spdtst="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip"
alias timeupd="sudo service ntp stop && sudo ntpdate pool.ntp.org && sudo service ntp start"
alias update="sudo apt-get update -y"

# Network Aliases
alias getip="curl icanhazip.com"
alias vpndown="sudo service openvpn stop"
alias vpnup="sudo service openvpn start"

# BOINC Aliases
alias boincdown="sudo service boinc-client stop"
alias boincrl="sudo serivce boinc-clienet force-reload"
alias boincup="sudo service boinc-client start"

# Transmission Aliases
alias t-basicstats='transmission-remote -n 'transmission:transmission' -st'
alias t-fullstats='transmission-remote -n 'transmission:transmission' -si'
alias t-list='transmission-remote -n 'transmission:transmission' -l'
alias t-reload='sudo service transmission-daemon reload'
alias t-start='sudo service transmission-daemon start'
alias t-stop='sudo service transmission-daemon stop'

# make a backup before editing a file
safeedit() {
  sudo cp $1 ${1}.backup && nano $1
}

# Easy extract
extract () {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       rar e $1       ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *)           echo "don't know how to extract '$1'..." ;;
      esac
  else
      echo "'$1' is not a valid file!"
  fi
}

if [ -f /etc/bash_completion ]; then
 . /etc/bash_completion
fi
