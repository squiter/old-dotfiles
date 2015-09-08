files=( ackrc bashrc bash_profile emacs emacs.d config alias vim vimrc gitconfig gitignore_global git-templates tmux.conf zshrc bin gemrc pryrc jrnl_config )

for filename in ${files[@]}
do
[[ -s $HOME/.$filename ]] && rm -rf $HOME/.$filename
  ln -sfi $PWD/$filename ~/.$filename
done

source ~/.bash_profile
