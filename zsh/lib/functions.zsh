# Simple commandline calculator
function calc () {
    awk "BEGIN { print $@ }"
}

# Push line to history with C-x
push-to-history() {
    print -s ${(z)BUFFER}
    zle send-break
}
zle -N push-to-history
bindkey "^X" push-to-history

# Push line to history, pop on next line
bindkey "^[Q" push-line

# SSH autocomplete
local _myhosts
_myhosts=( ${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[0-9]*}%%\ *}%%,*} )
zstyle ':completion:*:(ssh|scp|sftp)' hosts $_myhosts

zstyle ':completion:*:kill:*:processes' command "ps x"

# switch to temporary and lab directories
lab_dir() {
  LAB=$HOME/lab/
  gothere=$1

  base=$LAB

  create=1
  if test "$2"; then
    if echo "$2" | egrep -q '^[0-9]+$' && test $2 -gt 0; then
      dir=$base/`date -d "$2 days ago" +%Y%m%d`
      create=0
    else
      dir="$base/$2"
    fi
  else
    dir=$base/`date +%Y%m%d`
  fi

  if [ $create -eq 1 ] && test \! -d "$dir"; then
    mkdir -p "$dir"
  fi

  if [ $gothere -eq 1 ]; then
    cd $dir
  else
    echo $dir
  fi
}
temp_dir() {
  gothere=$1

  base=$HOME/temp

  create=1
  if test "$2"; then
    if echo "$2" | egrep -q '^[0-9]+$' && test $2 -gt 0; then
      dir=$base/`date -d "$2 days ago" +%Y%m%d`
      create=0
    else
      dir="$base/$2"
    fi
  else
    dir=$base/`date +%Y%m%d`
  fi

  if [ $create -eq 1 ] && test \! -d "$dir"; then
    mkdir -p "$dir"
  fi

  if [ $gothere -eq 1 ]; then
    cd $dir
  else
    echo $dir
  fi
}
t()  { temp_dir 1 $1; }
tp() { temp_dir 0 $1; }
lab()  { lab_dir 1 $1;}
labp() { lab_dir 0 $1;}

integrate_ranger()
{
     ranger <$TTY
     cd "$(grep \^\' ~/.ranger/bookmarks | cut -b3-)"
     precmd
     zle redisplay
}
zle -N integrated-ranger integrate_ranger
#bindkey '' integrated-ranger

insert_sudo()
{
    if [[ $BUFFER != "sudo "* ]]; then
        BUFFER="sudo $BUFFER"; CURSOR+=5
    fi
}
zle -N insert-sudo insert_sudo
bindkey '^[r' insert-sudo



chpwd() {
  [[ -o interactive ]] || return
  case $TERM in
    sun-cmd) print -Pn "\e]l%~\e\\"
      ;;
    *xterm*|rxvt|(dt|k|E)term) print -Pn "\e]2;%~\a"
      ;;
  esac
}
