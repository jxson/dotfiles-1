export PATH=/usr/local/bin:/$PATH:/usr/X11R6/bin:/usr/X11R6/sbin
export MANPATH=/usr/local/shar/man:$MANPATH:/usr/X11R6/man
export EDITOR=/usr/bin/vim
export PS1="[\#] \u@\h:\w> "
#export PS1="[\#] \w: "

alias ls="ls -h --color"
alias ll="ls -l --color"
alias la="ls -la --color"

alias sn='ssh silverninja.net'

alias vi="vim"
alias pacman="pacman-color"
alias jspec="/opt/ruby1.8/lib/ruby/gems/1.8/gems/jspec-4.2.0/bin/jspec"

keychain --quiet ~/.ssh/id_dsa
. ~/.keychain/`uname -n`-sh
