files=( ackrc bash_profile emacs config alias vim vimrc gitconfig gitignore_global git-templates tmux.conf zshrc bin gemrc pryrc )

for filename in ${files[@]}
do
[[ -s $HOME/.$filename ]] && rm -rf $HOME/.$filename
  ln -sfi $PWD/$filename ~/.$filename
done

source ~/.bash_profile
