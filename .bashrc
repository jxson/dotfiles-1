export PATH=~/bin:/usr/local/bin:/$PATH:/usr/X11R6/bin:/usr/X11R6/sbin:/opt/android-sdk/platform-tools
export MANPATH=~/local/share/man:~/man:/usr/local/shar/man:$MANPATH:/usr/X11R6/man
export EDITOR=/usr/bin/vim
export PS1="[\#] \u@\h:\w> "
export MAKEFLAGS="-j 5"
#export PS1="[\#] \w: "
export LANG="en_US.UTF-8"

if [[ -s /home/nlacasse/.rvm/scripts/rvm ]] ; then source /home/nlacasse/.rvm/scripts/rvm ; fi

alias ls="ls -h --color"
alias ll="ls -l --color"
alias la="ls -la --color"

alias vi="vim"

keychain --quiet ~/.ssh/id_dsa
. ~/.keychain/`uname -n`-sh

source ~/.local/bin/bashmarks.sh
