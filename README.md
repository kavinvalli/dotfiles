# Kavin's Dotfiles

My personal configuration files for a productive development environment on macOS.

## Tech Stack

| Tool | Description |
|------|-------------|
| [Ghostty](https://ghostty.org/) | Fast, native terminal emulator |
| [fish](https://fishshell.com) | User-friendly shell with great defaults |
| [Neovim](https://neovim.io/) | Hyperextensible text editor |
| [tmux](https://github.com/tmux/tmux) | Terminal multiplexer for session management |

## Prerequisites

Before getting started, install these dependencies:

### Required

- [Oh My Fish](https://github.com/oh-my-fish/oh-my-fish) - Fish shell plugin framework
- [vim-plug](https://github.com/junegunn/vim-plug) - Minimalist plugin manager for Neovim
- [tpm](https://github.com/tmux-plugins/tpm) - Tmux Plugin Manager
- [GNU Stow](https://www.gnu.org/software/stow/) - Symlink farm manager

### Optional

- [dotco](https://github.com/someshkar/dotco) - URL shortener powered by Vercel and Airtable
- [GitHub CLI](https://cli.github.com/) - GitHub on the command line
  - Enable repo deletion: `gh auth login -s delete_repo`

## Installation

1. **Backup existing dotfiles** (if any):
   ```sh
   mv ~/.dotfiles ~/.dotfiles.bak
   ```

2. **Clone this repository**:
   ```sh
   git clone https://github.com/kavinvalli/dotfiles.git ~/.dotfiles
   cd ~/.dotfiles
   ```

3. **Configure environment variables** (for dotco-cli):
   ```sh
   cp docs/url-env-example.sh scripts/url-env.sh
   # Edit scripts/url-env.sh with your Airtable credentials
   ```

4. **Create symlinks**:
   ```sh
   stow */
   ```

5. **Install a Nerd Font** from [nerd-fonts](https://github.com/ryanoasis/nerd-fonts) for icon support.

## Credits

- [dotco](https://github.com/someshkar/dotco) - URL shortener with Vercel and Airtable
- [dotco-cli](https://github.com/kavin25/airtable-url-cli)
- [notes-cli](fish/.config/fish/functions/notes.fish) by [@dotangad](https://github.com/dotangad)
- [@dotangad's tmux config](https://github.com/dotangad/dotfiles/blob/master/.tmux.conf)
- [Neil Sabde's dotfiles](https://github.com/hackorum/.dotfiles)

---

*Edited by v0*
