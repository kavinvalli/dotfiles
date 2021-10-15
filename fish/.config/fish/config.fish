set TERM xterm-256color

set GOPATH $HOME/go
set GOBIN $HOME/go/bin

set -x KAVIN_OS ""
switch (uname)
  case Linux
    set -x KAVIN_OS "LINUX"
    source $HOME/.config/fish/linux.fish
  case Darwin
    set -x KAVIN_OS "MACOS"
    switch (uname -m)
      case x86_64
        source $HOME/.config/fish/macos_intel.fish
      case arm64
        source $HOME/.config/fish/macos_m1.fish
      case '*'
        source $HOME/.config/fish/macos_intel.fish
    end
  case '*'
    set -x KAVIN_OS "UNKNOWN"
end

function fish_user_key_bindings
  fish_vi_key_bindings
  bind -M insert jk "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
end

set GPG_TTY (tty)

fish_add_path /usr/local/bin
fish_add_path /usr/local/bin/fish
fish_add_path /usr/bin
fish_add_path /usr/local/opt/util-linux/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.cargo/env

set LANG "en_US.UTF-8"
set LC_ALL "en_US.UTF-8"
set LC_CTYPE "en_US.UTF-8"

set -x VIRTUAL_ENV_DISABLE_PROMPT 1
set -U DOCKERFORMAT "ID\t{{.ID}}\nNAME\t{{.Names}}\nIMAGE\t{{.Image}}\nPORTS\t{{.Ports}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.CreatedAt}}\nSTATUS\t{{.Status}}\n"
set -U EDITOR "nvim"

source ~/aliases.sh
source ~/url-env.sh

#neofetch
#colorscript random

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

