function add_alias
    echo "alias $argv[1]=\"$argv[2]\"" >>~/.dotfiles/scripts/aliases.sh
    source ~/.dotfiles/fish/.config/fish/config.fish
end
