# basic aliases
darwin=`uname -a | cut -d " " -f 1`
if [ "$darwin" = "Darwin" ]
  then
    alias ls='ls -G -x'
else
    alias ls='ls --color'
fi
alias vi="vim"

# fab aliases
alias ve="fab --fabfile=${HOME}/.local/usr/local/fabric-ve/fabfile"
alias ve-s="source ${HOME}/activate_ve.sh"
