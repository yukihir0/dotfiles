#!/bin/sh

current_dir=`pwd`

# dir
dot_files+=(".bundle")
dot_files+=(".vim")

# file
dot_files+=(".gitconfig")
dot_files+=(".gitignore")
dot_files+=(".tmux.conf")
dot_files+=(".vimrc")
dot_files+=(".zshenv")
dot_files+=(".zshrc")

for dot_file in "${dot_files[@]}"
do
    if [ -e $HOME/$dot_file ]
    then
        echo "$HOME/$dot_file is already exits."
    else
        command="ln -s $current_dir/$dot_file $HOME/$dot_file"
        `$command`
        echo $command
    fi
done

