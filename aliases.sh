# general aliases
alias ls="exa --color=always --group-directories-first"
alias la="ls -al --git"
alias rc="source $HOME/.config/fish/config.fish"
alias u="url"
alias al="add_alias"
alias p="pwd | pbcopy"
alias b="browse"
alias fulldate="date +%A,\ %d\ %b,\ %l:%M\ %p"
alias sail="./vendor/bin/sail"
alias sac="source env/bin/activate.fish"
alias rm="trash"

# notes cli aliases
alias n="notes"
alias ns="notes -s"

# navigation aliases
alias c="cd ~/dev/code"
alias e="cd ~/dev/exun"
alias cn="cd ~/.config"
alias dt="cd ~/.dotfiles"

# dotfile aliases
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
alias nrw="npm run watch -s --"
alias nu="npx npm-check-updates --dep prod,dev --upgrade"

# yarn aliases
alias yi="yarn install"
alias yrs="yarn start -s --"
alias yrd="yarn dev -s --"
alias yrb="yarn build -s --"
alias yrd="yarn dev -s --"
alias yrw="yarn watch -s --"
alias yu="npx npm-check-updates --dep prod,dev --upgrade"

# pnpm aliases
alias pi="pnpm install"
alias prs="pnpm start -s --"
alias prd="pnpm dev -s --"
alias prb="pnpm build -s --"
alias prd="pnpm dev -s --"
alias prw="pnpm watch -s --"
alias pu="npx npm-check-updates --dep prod,dev --upgrade"

alias repo="gh repo view --web"
