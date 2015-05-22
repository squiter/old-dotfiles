# Installation

I'm movin my installation process to Ansible. To install this repo, use [ansible-dev](https://github.com/squiter/ansible-dev) instead.  

If you don't want to install all things in my ansbile config, just use the deprecated installation mode:

```
git clone git@github.com:squiter/dotfiles.git ~/dotfiles
cd ~/dotfiles
sh install.sh
git submodule update --init
```

## Configuration

To install vim plugins run:

```
vim +PluginInstall +qall
```

To set `zsh` as default shell, run:

```
chsh -s /bin/zsh
```

To add custom configurations, as machine name, just add it to `~/.zsh_custons`.