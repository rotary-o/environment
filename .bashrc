#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

if [ -f ~/.dir_colors ]; then
  eval `dircolors --sh ~/.dir_colors`
else
  eval `dircolors --sh /etc/DIR_COLORS`
fi

LS_OPTIONS="-F"

if [ $TERM != "emacs" ];then
  LS_OPTIONS="$LS_OPTIONS --color=auto"
fi

alias ls="ls $LS_OPTIONS"

alias d="ls"
alias l="ls"
alias ll="ls -l"
alias la="ls -a"
alias lsd="ls -d */"
alias cd..="cd .."
alias s="cd .."
alias p="cd -"

alias md="mkdir"
alias rd="rmdir"
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

alias grep="grep --color"
alias egrep="egrep --color"
alias fgrep="fgrep --color"

alias du="du -h"
alias df="df -h -x supermount"

if [ -z $ORIG_PATH ]; then
  export ORIG_PATH=$PATH
fi
#export JAVA_HOME=/usr/local/java/jdk1.6.0_45
#export JAVA_HOME=/usr/local/java/jdk1.7.0_76
export JAVA_HOME=/usr/local/java/jdk1.8.0_31
export PATH=$JAVA_HOME/bin:$ORIG_PATH
alias vi="vim"
