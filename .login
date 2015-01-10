# In case I'm somewhere with default csh

# Fixes X forwarding in active tmux sessions
tmux setenv -g DISPLAY $DISPLAY

# Switch to bash if not using `ssh -t`
setenv SHELL=/bin/bash
exec /bin/bash -l
