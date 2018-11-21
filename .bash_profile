if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
#export PATH=/usr/local/bin:/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}

##
# Your previous /Users/usamahussain/.bash_profile file was backed up as /Users/usamahussain/.bash_profile.macports-saved_2016-12-12_at_20:52:34
##

# MacPorts Installer addition on 2016-12-12_at_20:52:34: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

alias ipy="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
#export PYTHONPATH=$PYTHONPATH:/Users/usamahussain/Library/Python/2.7/lib/python/site-packages/

# added by Anaconda3 5.2.0 installer
export PATH="/Users/usamahussain/anaconda3/bin:$PATH"
