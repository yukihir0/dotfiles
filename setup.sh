#!/bin/bash

current_dir=$(cd $(dirname $0); pwd)

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
dot_files+=(".gemrc")

for dot_file in "${dot_files[@]}"
do
    if [ -e $HOME/$dot_file ]
    then
        echo "$HOME/$dot_file is already exits."
    else
        if [ "$dot_file"=".gitignore" ]
        then
            command="ln -s $current_dir/gitignore $HOME/.gitignore"
        else
            command="ln -s $current_dir/$dot_file $HOME/$dot_file"
        fi
        `$command`
        echo $command
    fi
done

