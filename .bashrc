export PATH=/usr/local/bin:/$PATH:/usr/X11R6/bin:/usr/X11R6/sbin
export MANPATH=/usr/local/shar/man:$MANPATH:/usr/X11R6/man
export EDITOR=/usr/bin/vim
export PS1="[\#] \u@\h:\w> "
#export PS1="[\#] \w: "

if [[ -s /home/nlacasse/.rvm/scripts/rvm ]] ; then source /home/nlacasse/.rvm/scripts/rvm ; fi

alias ls="ls -h --color"
alias ll="ls -l --color"
alias la="ls -la --color"

alias sn='ssh silverninja.net'

alias vi="vim"
alias pacman="pacman-color"

keychain --quiet ~/.ssh/id_dsa
. ~/.keychain/`uname -n`-sh

# Disable terminal bell
xset -b
