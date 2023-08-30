setopt EXTENDED_HISTORY
setopt HIST_ALLOW_CLOBBER
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_NO_STORE
setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt appendhistory


autoload -Uz colors && colors
colors
autoload -Uz compinit
compinit -u
fpath=(/usr/local/share/zsh-completions $fpath)

zstyle ':completion:*' use-cache true
zstyle ':completion:*:default' list-colors di=4 ex=33 '=*.c=35'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# eval
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

