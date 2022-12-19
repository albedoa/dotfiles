source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh

HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND="fg=white,bold"

bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down
bindkey "^[[Z" reverse-menu-complete

autoload -Uz compinit && compinit
zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"

autoload -Uz colors && colors
PS1="%{$fg[yellow]%}%1~ %{$reset_color%}% $ "


# OPTIONS
# auto-complete
setopt auto_menu

# directories
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups

# history
setopt share_history
setopt hist_ignore_dups
setopt hist_save_no_dups


# ALIASES
alias -- -="cd -"
alias ..="cd .."
alias ls="ls -AFG"
alias mkdir="mkdir -pv"

alias de="cd ~/Desktop"
alias dc="cd ~/Documents"
alias pr="cd ~/Documents/projects"

alias s="subl -n"

alias z="subl -n ~/.zshrc"
alias zs="source ~/.zshrc"

[ -f "/Users/corey/.ghcup/env" ] && source "/Users/corey/.ghcup/env" # ghcup-env
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
