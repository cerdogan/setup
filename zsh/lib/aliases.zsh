# ---[ Normal Aliases ]------------------------------------------------
eval `dircolors`

alias c='clear'
alias l='ls -CF'
alias vi='vim -c ":cd %:p:h"'
alias pu=pushd
alias pd=popd
alias d='dirs -v'
alias top=htop
alias grep=egrep
alias k="ranger"
alias ls='ls -h -F --group-directories-first --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -a --color=auto'
alias lsl='ls --color=auto | less -R'
alias "setbg"="feh --bg-scale"
alias ".."="cd .."
alias "bye"="exit"
alias ":q"="exit"
alias "ifconfig"="/sbin/ifconfig"
alias "killall"="sudo killall"
alias "myip"="wget -q -O - checkip.dyndns.org|sed -e 's/.*Current IP Address: //' -e 's/<.*$//'"
alias lsd='ls -ld *(-/DN)' # List only directories and symlinks -> dirs
alias lsa='ls -ld .*' # List only file beginning with "."

# ---[ Suffix Aliases ]------------------------------------------------
alias -s pdf=okular
alias -s py=python
alias -s html=firefox
alias -s tex=vim
alias -s doc=lowriter
alias -s docx=lowriter
alias -s otl=gvim
alias -s xls=lowriter
alias -s ppt=lowriter
alias -s "msi"="wine msiexec /i"
alias -s "exe"="wine"
alias "aptitude"="sudo aptitude"
alias "apt-get"="sudo apt-get"

# ---[ Global Aliases ]------------------------------------------------
#alias -g L='less'
#alias -g M='more'
#alias -g H='head'
#alias -g T='tail'
