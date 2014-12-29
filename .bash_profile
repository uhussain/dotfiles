if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

unset USERNAME

# Screen stuff
if screen -ls | grep -q 'Attached'; then
  echo -e "\e[32mScreen session available, attched at:\e[m"
  term=$(pinky ${USER}|grep "*pts")
  echo -e "$term (\e[36m$(host ${term:63}|sed 's/.*pointer \(.*\)\./\1/')\e[m)"
  unset term
elif screen -ls | grep -q 'Detached'; then
  echo -e "\e[32mScreen session available, currently detached.\e[m"
fi

# Store X display location for screen use
# use setupX to retrieve it in current environment
echo $DISPLAY > .Xdisplay
