#!/bin/bash

current_dir=$(cd $(dirname $0); pwd)
cd $current_dir


echo "--- link to dot_files from home directory ---"

# directory
dot_files+=(".bundle")
dot_files+=(".ssh")
dot_files+=(".peco")
dot_files+=(".tmux")
dot_files+=(".config")

# file
dot_files+=(".gitconfig")
dot_files+=(".gitignore")
dot_files+=(".tmux.conf")
dot_files+=(".zshenv")
dot_files+=(".zshrc")
dot_files+=(".gemrc")
dot_files+=(".tigrc")

for dot_file in "${dot_files[@]}"
do
    if [ -e $HOME/$dot_file ]
    then
        echo "[already exist] $HOME/$dot_file"
    else
        if [ "$dot_file" = ".gitignore" ]
        then
            command="ln -s $current_dir/gitignore $HOME/.gitignore"
        else
            command="ln -s $current_dir/$dot_file $HOME/$dot_file"
        fi
        echo "[exec command] $command"
        `$command`
    fi
done
