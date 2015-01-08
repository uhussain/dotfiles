if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

unset USERNAME

# Screen stuff
if tmux ls | grep -q 'attached'; then
  echo -e "\e[32mtmux session available, attched at:\e[m"
  term=$(pinky ${USER}|grep "pts"|head 1)
  echo -e "$term (\e[36m$(host ${term:63}|sed 's/.*pointer \(.*\)\./\1/')\e[m)"
  unset term
elif tmux has 2>/dev/null; then
  echo -e "\e[32mtmux session available, currently detached. Reattach? (y/n)\e[m"
  read c
  if [[ $c == "y" ]]; then
    tmux attach
  fi
fi
