set TERM xterm-256color
set NVM_DIR "$HOME/.nvm"
set LANG "en_US.UTF-8"
set LC_ALL "en_US.UTF-8"
set LC_CTYPE "en_US.UTF-8"
set -x VIRTUAL_ENV_DISABLE_PROMPT 1
set -U DOCKERFORMAT "ID\t{{.ID}}\nNAME\t{{.Names}}\nIMAGE\t{{.Image}}\nPORTS\t{{.Ports}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.CreatedAt}}\nSTATUS\t{{.Status}}\n"
set -U EDITOR nvim
set -x GPG_TTY (tty)

ulimit -n 65536

source ~/.config/fish/tokyonight.fish # THEME
source ~/.config/fish/mappings.fish # Mappings
source ~/.config/fish/paths.fish # Paths
source ~/.dotfiles/aliases.sh
source ~/.dotfiles/url-env.sh
source ~/.dotfiles/exa/EXACOLORS

function fish_user_key_bindings
  fish_vi_key_bindings
  bind -M insert jk "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
end

# pnpm
set -gx PNPM_HOME "/Users/kavinvalli/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
fish_add_path /Users/kavinvalli/.spicetify
