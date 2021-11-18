set TERM xterm-256color

set GOPATH $HOME/go
set GOBIN $HOME/go/bin
set LDFLAGS -L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib

# function fish_greeting
#     neofetch
# end

set -x KAVIN_OS ""
switch (uname)
    case Linux
        set -x KAVIN_OS LINUX
        source $HOME/.config/fish/linux.fish
    case Darwin
        set -x KAVIN_OS MACOS
        switch (uname -m)
            case x86_64
                source $HOME/.config/fish/macos_intel.fish
            case arm64
                source $HOME/.config/fish/macos_m1.fish
            case '*'
                source $HOME/.config/fish/macos_intel.fish
        end
    case '*'
        set -x KAVIN_OS UNKNOWN
end

bind -M insert \ca tmux-sessionizer

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
fish_add_path $HOME/kscripts

set LANG "en_US.UTF-8"
set LC_ALL "en_US.UTF-8"
set LC_CTYPE "en_US.UTF-8"

set -x VIRTUAL_ENV_DISABLE_PROMPT 1
set -U DOCKERFORMAT "ID\t{{.ID}}\nNAME\t{{.Names}}\nIMAGE\t{{.Image}}\nPORTS\t{{.Ports}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.CreatedAt}}\nSTATUS\t{{.Status}}\n"
set -U EDITOR nvim

source ~/aliases.sh
source ~/url-env.sh
# neofetch
#colorscript random
# TokyoNight Color Palette
# set -l foreground c0caf5
# set -l selection 33467C
# set -l comment 565f89
# set -l red f7768e
# set -l orange ff9e64
# set -l yellow e0af68
# set -l green 9ece6a
# set -l purple 9d7cd8
# set -l cyan 7dcfff
# set -l pink bb9af7

# # Syntax Highlighting Colors
# set -g fish_color_normal $foreground
# set -g fish_color_command $cyan
# set -g fish_color_keyword $pink
# set -g fish_color_quote $yellow
# set -g fish_color_redirection $foreground
# set -g fish_color_end $orange
# set -g fish_color_error $red
# set -g fish_color_param $purple
# set -g fish_color_comment $comment
# set -g fish_color_selection --background=$selection
# set -g fish_color_search_match --background=$selection
# set -g fish_color_operator $green
# set -g fish_color_escape $pink
# set -g fish_color_autosuggestion $comment

# # Completion Pager Colors
# set -g fish_pager_color_progress $comment
# set -g fish_pager_color_prefix $cyan
# set -g fish_pager_color_completion $foreground
# set -g fish_pager_color_description $comment

test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish
