#!/usr/bin/env bash

languages=$(echo "javascript typescript python php" | tr " " "\n")
core_utils=$(echo "find xargs sed awk" | tr " " "\n")
selected=$(echo -e "$languages\n$core_utils" | fzf)

if [[ -z $selected ]]; then
  exit 0
fi

read -p "Query: " query

if echo "$languages" | grep -qs $selected; then
  # tmux split-window -p 32 -h fish -c "curl --silent cht.sh/$selected/$(echo "$query" | tr " " "+") | less -r"
  echo "cht.sh/$selected/$(echo "$query" | tr " " "+")"
  tmux neww fish -c "curl --silent cht.sh/$selected/$(echo "$query" | tr " " "+") | less -r"
else
  tmux neww fish -c "curl --silent cht.sh/$selected~$(echo "$query" | tr " " "+") | less -r"
fi

