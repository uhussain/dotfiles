# OS X customizations
[ $(uname) == "Darwin" ] || return

# ROOT
. $(brew --prefix root)/libexec/thisroot.sh

# Some mac-specific aliases
alias vi=vim
alias vim="mvim -v"
alias ls="command ls -G"
alias ll="ls -lhG"

alias sshuwremote="ssh -tY uwlogin_remote 'echo \$DISPLAY > ~/.Xdisplay && tmux attach'"
