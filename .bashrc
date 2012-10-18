source /etc/profile
export EC2_HOME=~/ec2-api-tools-1.6.4
export PATH=~/bin:/usr/local/bin:/$PATH:/usr/X11R6/bin:/usr/X11R6/sbin:$EC2_HOME/bin
export MANPATH=~/local/share/man:~/man:/usr/local/shar/man:$MANPATH:/usr/X11R6/man
export EDITOR=/usr/bin/vim
export PS1="[\#] \u@\h:\w> "
export MAKEFLAGS="-j 5"
#export PS1="[\#] \w: "

alias ls="ls -h --color"
alias ll="ls -l --color"
alias la="ls -la --color"

alias vi="vim"

keychain --quiet ~/.ssh/id_dsa
. ~/.keychain/`uname -n`-sh

source ~/.local/bin/bashmarks.sh

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
source ~/bin/aws_keys.sh
