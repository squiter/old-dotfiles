RED="\[\033[0;31m\]"
MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
CYAN="\[\033[1;36m\]"
DEFAULT_COLOR="\[\e[0m\]"

export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Showing RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
PS1="$MAGENTA[\$(~/.rvm/bin/rvm-prompt)]$YELLOW\$(parse_git_branch)$DEFAULT_COLOR $PS1"

if [ -f /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Inserting alias
. ~/.alias

# TODO: How to verify if macports are installed?
# MacPorts Installer addition on 2012-01-10_at_17:17:25: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin

# Time tracking for terminal
PROMPT_TITLE='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"'
export PROMPT_COMMAND="${PROMPT_COMMAND} ${PROMPT_TITLE}; "

# Add ~/bin to my PATH
PATH=/usr/local/bin:$PATH:$HOME/bin
