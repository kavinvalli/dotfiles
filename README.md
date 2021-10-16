# Kavin's .dotfiles

## Screenshots

![Screenshot 2021-10-15 at 6 31 04 PM](https://user-images.githubusercontent.com/41034356/137490922-0f5e66ea-8019-44a8-9a57-c35d52352c53.png)

## Dependencies

Install the following

- [Fish Shell](https://fishshell.com/) - Unix shell
  - [ohmyfish](https://github.com/oh-my-fish/oh-my-fish) - Makes it easier to
    extend fish with plugins
- [Neovim](https://neovim.io/) - Vim but better
  - [vim-plug](https://github.com/junegunn/vim-plug) - Plugin Manager for Neovim
- [Tmux](https://github.com/tmux/tmux) - Terminal Multiplexer
  - [tpm](https://github.com/tmux-plugins/tpm) - Plugin Manager for Tmux
- [GNU Stow](https://www.gnu.org/software/stow/) - Symlink manager

### Some more optional dependencies for some fish functions

- [dotco](https://github.com/someshkar/dotco) - A URL Shortener with Vercel and
  Airtable
- [Github CLI](https://cli.github.com/) - Github CLI
  - Get the `delete repo` permission by doing `gh auth login -s delete_repo`

## Setup

1. Install the dependencies above
2. Backup old dotfiles if you have any

```sh
mv ~/.dotfiles ~/.dotfiles.bak
```

3. Clone this repo

```sh
git clone https://github.com/kavin25/dotfiles.git
cd ~/.dotfiles
```

4. Change Airtable env vars for
   [dotco-cli](https://github.com/kavin25/airtable-url-cli)

```sh
cp docs/url-env-example.sh scripts/url-env.sh
```

5. Symlink with Stow

```sh
stow */
```

6. Install some [Nerd Font](https://github.com/ryanoasis/nerd-fonts) - for some
   icons and stuff

## Credits

- [dotco](https://github.com/someshkar/dotco) - A URL Shortener with Vercel and
  Airtable
- [dotco-cli](https://github.com/kavin25/airtable-url-cli)
- [notes-cli](fish/.config/fish/functions/notes.fish) -
  [@dotangad](https://github.com/dotangad)
- [@dotangad's Tmux Config](https://github.com/dotangad/dotfiles/blob/master/.tmux.conf)
- [Blacksuan19's Tmux Config](https://github.com/Blacksuan19/init.nvim)
