# tmux
tmux source-file ~/.tmux.conf
if [ "$TMUX" = "" ]; then tmux; fi

# Binaries
alias gdb='gdb --args'
alias make='for i in {1..25}; do echo ""; done; clear; make'
alias oldowan='cd /home/cerdogan/Documents/Oldowan/build/'
alias rube='cd /home/cerdogan/Documents/RubeGoldberg/'
alias valgrind='valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --num-callers=20 --track-fds=yes'

# Aliases
alias cl='/home/cerdogan/Documents/School/Random/OpenCL/'
alias grep='grep -n --color=tty'
alias tname='tmux rename-window' 
alias kdoc='cd /home/cerdogan/Documents/Krang/Documentation'
alias ksoft='cd /home/cerdogan/Documents/Krang/Software'

# Paths
export GTEST_DIR='/home/cerdogan/.Tools/gtest-1.6.0/include/'
export INPUTRC='/home/cerdogan/.inputrc'
export PATH=$PATH:'/usr/local/MATLAB/R2012a/bin'
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:'/usr/local/lib:/home/cerdogan/Documents/RubeGoldberg/Revisited/build:/opt/AMDAPP/lib/x86_64:/opt/AMDAPP/lib/x86:/usr/lib/fglrx'
export MATLAB_JAVA=/usr/lib/jvm/java-7-openjdk-amd64/jre

