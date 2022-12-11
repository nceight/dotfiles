# Set default programs
export EDITOR=/usr/bin/nvim
export TERMINAL=/usr/bin/alacritty

# Set local path
export PATH=$HOME/.local/bin:$PATH

# History
HISTFILE=$HOME/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# Alias
alias v="nvim"
alias vdo="sudo nvim"
alias yay="paru"
alias ls="exa --long --all --header --git --icons --group-directories-first"
alias cd="z"
alias cat="bat"
alias find="fd"
alias grep="rg"
alias du="dust"
alias ps="procs"
alias top="btm"
alias gui="gitui"
alias scrcpy_usb="nohup scrcpy --shortcut-mod=lctrl --turn-screen-off --stay-awake --power-off-on-close &"
alias scrcpy_wifi="nohup scrcpy --tcpip=192.168.1.51 --max-size=1168 --bit-rate=5M --shortcut-mod=lctrl --turn-screen-off --stay-awake --power-off-on-close &"

# Completion
zstyle ':completion:*' menu select
zstyle ':completion:*' list-dirs-first true
zstyle :compinstall filename "$HOME/.zshrc"
autoload -Uz compinit
compinit

# Keybindings
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# Auto-suggestion
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# broot
source $HOME/.config/broot/launcher/bash/br

# fnm
export PATH="$HOME/.local/share/fnm:$PATH"
eval "`fnm env`"

# zoxide (must be after compinit)
eval "$(zoxide init zsh)"

# starship (must be at the end of line)
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

