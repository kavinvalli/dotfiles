# Kavin's .dotfiles

## Screenshots
![Screenshot 2021-10-15 at 6 31 04 PM](https://user-images.githubusercontent.com/41034356/137490922-0f5e66ea-8019-44a8-9a57-c35d52352c53.png)

## Setup

1. Install the following
   - Fish Shell
     - ohmyfish
   - Neovim
     - vim-plug
   - Tmux
     - tpm (Tmux Plugin manager)
   - GNU Stow
2. `mv ~/.dotfiles ~/.dotfiles.bak && git clone https://github.com/kavin25/dotfiles.git .dotfiles`
3. Change Airtable URL CLI env vars -
   `cd ~/.dotfiles && cp docs/url-env-example.sh scripts/url-env.sh`
4. `stow */`
5. Some [Nerd Font](https://github.com/ryanoasis/nerd-fonts) - I use
   `Fira Code Nerd Font`

## Dependency for some fish functions

1. [dotco](https://github.com/someshkar/dotco)

- Using for my URL Shortener

2. [Github CLI](https://cli.github.com/)
   - Make sure to get `delete repo` permission by doing
     `gh auth login -s delete_repo`

## Credits

1. [dotco](https://github.com/kavin25/dotco)
2. [dotco-cli](https://github.com/kavin25/airtable-url-cli)
3. [notes-cli](https://github.com/kavin25/.dotfiles/blob/master/.config/fish/functions/notes.fish) -
   @dotangad
4. [Angad's Tmux Config](https://github.com/dotangad/dotfiles/blob/master/.tmux.conf)
5. [Blacksuan19's Neovim Config](https://github.com/Blacksuan19/init.nvim)
