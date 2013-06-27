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
alias kdoc='cd /home/cerdogan/Documents/Documentation'
alias ksoft='cd /home/cerdogan/Documents/Software'
alias isrr='cd /home/cerdogan/Documents/MacGyver/ISRR'
alias scenes='cd /home/cerdogan/Documents/MacGyver/3rdParty/simulation/scenes'
alias esdcan='/usr/src/ntcan/esdcan-pci405-linux-2.6.x-x86_64-3.9.4'
alias exp='~/Documents/Software/project/krang/experiments/'
alias krang='cd /home/cerdogan/Documents/Software/project/krang'
alias somatic='cd /home/cerdogan/Documents/Software/lib/somatic'
alias ollwa='vim /var/run/somatic/pciod-llwa/out'
alias orlwa='vim /var/run/somatic/pciod-rlwa/out'
alias owaist='vim /var/run/somatic/pciod-waist/out'

# Paths
export GTEST_DIR='/home/cerdogan/.Tools/gtest-1.6.0/include/'
export INPUTRC='/home/cerdogan/.inputrc'
export PATH=$PATH:'/usr/local/MATLAB/R2012a/bin'
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:'/usr/lib:/usr/local/lib:/home/cerdogan/Documents/RubeGoldberg/Revisited/build:/opt/AMDAPP/lib/x86_64:/opt/AMDAPP/lib/x86:/usr/lib/fglrx'
export MATLAB_JAVA=/usr/lib/jvm/java-7-openjdk-amd64/jre

# Research
export OPENRAVE_PLUGINS='/home/cerdogan/Documents/MacGyver/3rdParty/berenson-comps/plugins':'/usr/local/share/openrave-0.7/plugins'
