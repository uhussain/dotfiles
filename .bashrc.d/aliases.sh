# Common aliases

alias rebash="pushd ~ && . .bashrc && popd"
alias sshlpc="ssh -tY cmslpc 'echo \$DISPLAY > ~/.Xdisplay && ~/local/bin/tmux attach'"
alias sshhep="ssh -tY hep 'echo \$DISPLAY > ~/.Xdisplay && tmux attach'"
