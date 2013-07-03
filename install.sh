files=( bash_profile alias vim vimrc gitconfig gitignore_global )

for filename in ${files[@]}
do
[[ -s $HOME/.$filename ]] && rm -rf $HOME/.$filename
  ln -s $PWD/$filename ~/.$filename
done

source ~/.bash_profile
