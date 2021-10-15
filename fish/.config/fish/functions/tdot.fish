function tdot
  set originalDir (pwd)
  cd ~/.dotfiles
  tmux new -s dot -d

  tmux neww -t dot: -n nvim_conf -d 'nvim ~/.dotfiles/.config/nvim/init.vim'
  tmux neww -t dot: -n fish_conf -d 'nvim ~/.dotfiles/.config/fish/config.fish'
  tmux neww -t dot: -n tmux_conf -d 'nvim ~/.dotfiles/.tmux.conf'

  cd $originalDir
end
