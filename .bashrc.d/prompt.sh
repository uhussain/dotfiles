# prompt customizations

# git integration provided by
# git-completion.sh and git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWCOLORHINTS=true

# Set up screen process name capture if using screen
if [[ "$TERM" == "screen-bce" ]]; then
  PS1='[\[\ek\e\\\]\u@\h \W$(__git_ps1 " (%s)")]\$ '
else
  PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
fi

