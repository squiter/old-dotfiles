# Path to your oh-my-zsh configuration.
ZSH=$HOME/dotfiles/oh-my-zsh

# Export the DFAULT_USER variable
export DEFAULT_USER="squiter"

# Forcing TERM to use 256 Colors - Fix Tmux wrong colors
export TERM="xterm-256color"

# Add RVM to agnoster theme
export RPROMPT="\$(~/.rvm/bin/rvm-prompt) [%D{%L:%M:%S %p}]"

TMOUT=1

TRAPALRM() {
  zle reset-prompt
}

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Base16 Shell
BASE16_SCHEME="twilight"
BASE16_SHELL="$HOME/dotfiles/config/base16-shell/base16-$BASE16_SCHEME.dark.sh"
[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL

# Example aliases
alias zshconfig="vim ~/dotfiles/zshrc"
alias ohmyzsh="vim ~/dotfiles/oh-my-zsh"

source $HOME/dotfiles/alias

#function to create and go to folder :)
function mcd() {   [ -n "$1" ] && mkdir -p "$@" && cd "$1";   }

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails ruby brew rvm heroku rake zsh-syntax-highlighting themes z)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Custom plgin
CUSTOM_ZSH=$HOME/dotfiles/custom-zsh
source $CUSTOM_ZSH/squiter-proj-dir.plugin.zsh
source $CUSTOM_ZSH/squiter-loca-dir.plugin.zsh
source $CUSTOM_ZSH/git_functions.plugin.zsh
source $CUSTOM_ZSH/locaweb-deploy-tools.plugin.zsh
source $CUSTOM_ZSH/squiter-osx.plugin.zsh

# Using Tmuxinator
source $HOME/dotfiles/bin/tmuxinator.zsh

export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8

export EDITOR='vim'
export DISABLE_AUTO_TITLE=true

# fix for RVM
if [ -f $HOME/.rvm/scripts/rvm ]; then
  source $HOME/.rvm/scripts/rvm
fi

# Adding specific configurations by enviroment
if [ -f $HOME/.zsh_custons ]; then
  source $HOME/.zsh_custons
fi

# Set the environment variable for the docker daemon
export DOCKER_HOST=tcp://127.0.0.1:4243

# Add ~/bin to my PATH
export PATH=/usr/local/bin:$PATH:$HOME/bin:$HOME/.rvm/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$HOME/dotfiles/powerline/scripts:$PATH"
