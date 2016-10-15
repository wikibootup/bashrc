#!/bin/bash

# References
# - https://github.com/dahlia/nvimrc/blob/master/install.sh

# Link bash configuration to ~/.config/bash
bashrc_name="bashrc"
src_bashrc_dir="$(pwd)"
src_bashrc="$src_bash_dir/$bashrc_name"
dst_bash_dir="$HOME/.config/bash"
dst_bashrc="$dst_bash_dir/$bashrc_name"
echo "Bash configuration directory: $dst_bash_dir"
if [[ ! -f "$dst_bashrc" || "$(cat "$src_bashrc")" != "$(cat "$dst_bashrc")" ]]
then
  rm -f "$dst_bash_dir"
  ln -sfi "$src_bashrc_dir" "$dst_bash_dir"
fi
