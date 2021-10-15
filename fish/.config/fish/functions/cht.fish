function cht
  set selected (cat ~/.dotfiles/scripts/.tmux-cht-languages ~/.dotfiles/scripts/.tmux-cht-command | fzf)
  read -l -P 'Enter Query: ' query

  if test -n (grep "$selected" ~/.dotfiles/scripts/.tmux-cht-languages)
    set query (echo $query | tr ' ' '+')
    tmux neww bash -c "echo \"curl cht.sh/$selected/$query\" & curl cht.sh/$selected/$query & while [ : ]; do sleep 1; done"
  else
    tmux neww bash -c "curl -s cht.sh/$selected~$query | less"
  end
end

