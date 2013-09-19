# Path to your oh-my-zsh configuration.
ZSH=$HOME/dotfiles/oh-my-zsh

# Export the EFAULT_USER variable
export DEFAULT_USER="squiter"

# Add RVM to agnoster theme
export RPROMPT="\$(~/.rvm/bin/rvm-prompt)"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Example aliases
alias zshconfig="vim ~/dotfiles/zshrc"
alias ohmyzsh="vim ~/dotfiles/oh-my-zsh"
# Open the last directory
alias cdlast='cd $( ls -lt | grep d | head -1 |  cut -b 49- )'

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
plugins=(git rails rails3 bundler ruby brew rvm capistrano heroku rake pip github zsh-syntax-highlighting themes)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Custom plgin
CUSTOM_ZSH=$HOME/dotfiles/custom-zsh
source $CUSTOM_ZSH/squiter-proj-dir.plugin.zsh
source $CUSTOM_ZSH/squiter-loca-dir.plugin.zsh
source $CUSTOM_ZSH/locaweb-deploy-tools.plugin.zsh

# Using Tmuxinator
source $HOME/dotfiles/bin/tmuxinator.zsh

# Add ~/bin to my PATH
export PATH=/usr/local/bin:$PATH:$HOME/bin

export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8

export EDITOR='vim'
export DISABLE_AUTO_TITLE=true

# Adding a command to show my current e-mail for this repository.
# This is the solution to use a different email in work enviroment.
git() { if [[ $1 == "clone" ]]; then command git "$@"  && echo "===================================================" && cdlast && git config user.email; else command git "$@"; fi; }
git() { if [[ $1 == "status" ]]; then command git "$@"  && echo "===================================================" && git config user.email; else command git "$@"; fi; }
git() { if [[ $1 == "st" ]]; then command git "$@"  && echo "===================================================" && git config user.email; else command git "$@"; fi; }
