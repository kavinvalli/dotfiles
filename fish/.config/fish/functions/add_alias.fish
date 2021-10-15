function add_alias
  echo "alias $argv[1]=\"$argv[2]\"" >> ~/.dotfiles/aliases.sh
  source ~/.dotfiles/.config/fish/config.fish
end
