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

set -gx PATH "/opt/homebrew/bin" $PATH
set -gx PATH "/opt/homebrew/opt/python/libexec/bin" $PATH
source ~/.config/fish/paths.fish # Paths
set -gx PATH "/usr/local/bin" $PATH
# source ~/.config/fish/tokyonight.fish # THEME
source ~/.config/fish/mappings.fish # Mappings
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
set -gx NVM_DIR "/Users/kavinvalli/.nvm"
set -gx CLOUDCONVERT_API_KEY "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjViYmZjOWU3M2MyYmQ1MDFlNjdjMDc5MzZjNTU0ZTc2NDQ2MWZhYzlhN2JiZmVhMTVhZGE4MGQ2ZThiMTg3MmRmMGIxNjk4ODI4ZWI2ODIiLCJpYXQiOjE3MjkyOTc1MzEuNDQwODk4LCJuYmYiOjE3MjkyOTc1MzEuNDQwODk5LCJleHAiOjQ4ODQ5NzExMzEuNDM2NjY1LCJzdWIiOiI2OTkyODkwNSIsInNjb3BlcyI6WyJ1c2VyLnJlYWQiLCJ1c2VyLndyaXRlIiwidGFzay5yZWFkIiwidGFzay53cml0ZSIsIndlYmhvb2sucmVhZCIsIndlYmhvb2sud3JpdGUiLCJwcmVzZXQucmVhZCIsInByZXNldC53cml0ZSJdfQ.YuFG86-9C_6wU9QC-go-ZvDvIBs0DUqX3aCv1YU8TBw808hTHrOxHvxoNhQqJvFJrsBBmLRCOrb0pOv1g9M_0JBun4G5g4H7vPH8Qse3nv6soxKwJDEtF7g5B8OJsgR2mgsgKnqXYZWrWSnli77BhM7IRvjYHC31vM2n9XyEKarx6yzZZSyQci580BZhSJzYcYInnBz0Cg2PkMl12X3n8pHI_RzQyAF1Hw02XgQgXBsv545Bc1o7TMb8nwz2892_IUkoiyZ17_TcafzgR-DsG9LIACRXUvwUtNU2kAnVUAU6s5Vm7Xq6FBGpXpKYsu-f11_SzJBz7gi4yakvhlw51DzJ3PAhGfF8sOvuiXf9A-TYfT1ydk9T0fILfpkIdYdF-i2yENr-rM0r--JTDyeN1hhwLBAqzk_Mv1RErDtnxLbdS8-0C3kddrs4UPJtNayyIFRfi6GEdvJk4IQqgS3rFn7AA1wjMhErA8sSdVeo49CQuSjYwYQXBc0cqkyXb_4QisUFDebPPdIjf5sGx1c9C75v5g6fP_37hpsbJCwzhdJYuXQc_s8KD4QGtI417G1S6N-7SR0aa85YvkLFfsDsW9OcTL5cbwzJ8MiIbrClB4sNzTdYmdJaQu9M7gxBxXxxphBhB2iyBkjwjCe_RjPo8mpiyX5D1ZXZUX10Mgm14bc"
# source $NVM_DIR/nvm.sh

# pnpm end
fish_add_path /Users/kavinvalli/.spicetify

# function fish_greeting
  # colorscript random
  # neofetch
# end

# Setting PATH for Python 3.10
# The original version is saved in /Users/kavinvalli/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.10/bin" "$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kavinvalli/google-cloud-sdk/path.fish.inc' ]; . '/Users/kavinvalli/google-cloud-sdk/path.fish.inc'; end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /Users/kavinvalli/.ghcup/bin $PATH # ghcup-env

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
set -gx PATH "/opt/homebrew/opt/python/libexec/bin" $PATH
