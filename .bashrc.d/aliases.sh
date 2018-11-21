# Common aliases

alias rebash="pushd ~;. .bashrc;popd"
alias sshlpc="ssh -tY cmslpc25.fnal.gov 'echo \$DISPLAY > ~/.Xdisplay && ~/local/bin/tmux attach'"
alias sshhep="ssh -tY hep 'echo \$DISPLAY > ~/.Xdisplay && tmux attach'"
alias cq="condor_q $USER"
alias vi=vim
alias setupcrab="source /cvmfs/cms.cern.ch/crab3/crab.sh"
alias sshuw="ssh -tY uwlogin 'echo \$DISPLAY > ~/.Xdisplay && tmux attach'"
alias kk="kinit -k -t ~/private/uhussain.keytab uhussain@CERN.CH && aklog"
alias updatePermissions="while sleep 3600; do echo 'Refreshing AFS'; date +%Y%m%d%H%M%S; kk; done"
alias hdfsls="hdfs dfs -ls"
alias hdfsrm="gsido hdfs dfs -rm"
alias k5tmux="/usr/bin/k5reauth -f -p uhussain -k ~/private/uhussain.keytab -- tmux"
#alias k5tmux="k5reauth -f -i 600 -p uhussain -k ~/private/uhussain.keytab -- tmux"
