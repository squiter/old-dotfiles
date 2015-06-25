RED="\[\033[0;31m\]"
MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
CYAN="\[\033[1;36m\]"
DEFAULT_COLOR="\[\e[0m\]"

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# rbenv? :)
if which rbenv > /dev/null; then
  eval "$(rbenv init - bash)"
fi

source '/usr/local/Cellar/rbenv/0.4.0/completions/rbenv.bash'# prompt with ruby version

# rbenv version | sed -e 's/ .*//'
__rbenv_ps1 ()
{
  rbenv_ruby_version=`rbenv version | sed -e 's/ .*//'`
  printf $rbenv_ruby_version
}

PS1="$MAGENTA[\$(__rbenv_ps1)]$YELLOW\$(parse_git_branch)$DEFAULT_COLOR $PS1"
