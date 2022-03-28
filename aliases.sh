# general aliases
alias la="ls -al"
alias rc="source $HOME/.config/fish/config.fish"
alias u="url"
alias al="add_alias"
alias p="pwd | pbcopy"
alias b="browse"
alias fulldate="date +%A,\ %d\ %b,\ %l:%M\ %p"
alias sail="./vendor/bin/sail"
alias sac="source env/bin/activate.fish"

# notes cli aliases
alias n="notes"
alias ns="notes -s"

# navigation aliases
alias c="cd ~/dev/code"
alias e="cd ~/dev/exun"

# dotfile aliases
alias dt="cd ~/.dotfiles"
alias dot="tmux attach-session -t _dotfiles"
alias fishrc="nvim ~/.dotfiles/.config/fish/config.fish"
alias nvimrc="nvim ~/.dotfiles/.config/nvim/init.vim"

alias sp="spotify"
alias love="/Applications/love.app/Contents/MacOS/love"

# npm aliases
alias ni="npm install"
alias nrs="npm run start -s --"
alias nrd="npm run dev -s --"
alias nrb="npm run build -s --"
alias nrd="npm run dev -s --"
alias nu="npx npm-check-updates --dep prod,dev --upgrade"

# yarn aliases
alias yi="npm install"
alias yrs="npm run start -s --"
alias yrd="npm run dev -s --"
alias yrb="npm run build -s --"
alias yrd="npm run dev -s --"
alias yu="npx npm-check-updates --dep prod,dev --upgrade"
