if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

unset USERNAME

# Lets you know if there is already a tmux session available
# ignore in non-ssh situations
if tmux ls 2>/dev/null| grep -q 'attached' && [ ! $(uname) == "Darwin" ]; then
  echo -e "\e[32mtmux session available, attched at:\e[m"
  term=$(pinky ${USER}|grep "pts"|head 1)
  echo -e "$term (\e[36m$(host ${term:63}|sed 's/.*pointer \(.*\)\./\1/')\e[m)"
  unset term
elif tmux has 2>/dev/null && [ ! $(uname) == "Darwin" ]; then
  echo -e "\e[32mtmux session available, currently detached. Reattach? (y/n)\e[m"
  read c
  if [[ $c == "y" ]]; then
    tmux attach
  fi
fi

# Store X display location for screen use
# use setupX to retrieve it in current environment
echo $DISPLAY > ~/.Xdisplay
