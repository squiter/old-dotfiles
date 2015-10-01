source ~/.bashrc

export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8

# TODO: How to verify if macports are installed?
# MacPorts Installer addition on 2012-01-10_at_17:17:25: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Time tracking for terminal
PROMPT_TITLE='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"'
export PROMPT_COMMAND="${PROMPT_COMMAND} ${PROMPT_TITLE}; "

# Add ~/bin to my PATH
PATH=/usr/local/bin:$PATH:$HOME/bin
