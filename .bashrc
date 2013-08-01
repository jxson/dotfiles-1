export PATH=~/bin:~/node_modules/.bin:/usr/local/bin:/$PATH:/usr/X11R6/bin:/usr/X11R6/sbin:~/.gem/ruby/2.0.0/bin/
export MANPATH=~/local/share/man:~/man:/usr/local/shar/man:$MANPATH:/usr/X11R6/man
export EDITOR=/usr/bin/vim
export PS1="[\#] \u@\h:\w> "
export MAKEFLAGS="-j 5"
#export PS1="[\#] \w: "

[[ -s /home/nlacasse/.nvm/nvm.sh ]] && . /home/nlacasse/.nvm/nvm.sh # This loads NVM

alias ls="ls -h --color"
alias ll="ls -l --color"
alias la="ls -la --color"

alias vi="vim"

keychain --quiet ~/.ssh/id_dsa
. ~/.keychain/`uname -n`-sh

source ~/.local/bin/bashmarks.sh
