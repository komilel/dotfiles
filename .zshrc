# Zinit initialization
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

# Source zinit
source "${ZINIT_HOME}/zinit.zsh"

# Load completions
autoload -U compinit && compinit

# Emacs keys
bindkey -e

# Plugins
zinit light Aloxaf/fzf-tab
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit snippet https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git/git.plugin.zsh

# Styles
zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"
zstyle ":completion:*" list-colors "${(s.:.)LS_COLORS}"
zstyle ":completion:*" menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# Bind ctrl+shift+f to tmux sessionizer
bindkey -s '^[[102;6u' "tmux-sessionizer\n"

# Bind ctrl+shift+e to yazi
bindkey -s '^[[101;6u' "yazi\n"

# Options for zsh
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Aliases
alias cdl='cd -'
alias ls='ls --color'
alias c='clear'
alias dfs='cd ~/dotfiles'
alias dfn='dfs && v .'
alias lc='lsd'
alias llc='lsd -al'
alias sn='shutdown now'
alias rb='reboot'
alias v='nvim'
alias sudo='sudo '
alias hctl='hyprctl'
alias nc='nmcli connection up'
alias nd='nmcli connection down'
alias nuke='rm -rf'
alias nukee='sudo rm -rf'

alias get_cw='cat ~/.cache/current_wallpaper'

# Aliases for yay
alias ys='yay -S'
alias yf='yay -Ss'
alias yr='yay -R'
alias yrc='yay -Rns'

zinit cdreplay -q

# Load wallust theme to new terminal instances
cat ~/.cache/wallust/sequences

# Init zoxide (replace cd command)
eval "$(zoxide init zsh --cmd cd)"

# Integrate fzf
eval "$(fzf --zsh)"

# Bun completions
[ -s "/home/komi/.bun/_bun" ] && source "/home/komi/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# For bootdev
export PATH="$PATH:$HOME/go/bin"

# Scripts folder in dotfiles
export PATH="$PATH:$HOME/dotfiles/scripts/"

# pnpm
export PNPM_HOME="/home/komi/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Init oh my posh
eval "$(oh-my-posh init zsh --config ~/dotfiles/oh-my-posh/probua.minimal.omp.json)"
