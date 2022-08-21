#-------------------------------------------
# Environment variable
#-------------------------------------------

export LANG=ja_JP.UTF-8
export FZF_DEFAULT_COMMAND='find .'


#-------------------------------------------
# Load config files
#-------------------------------------------

ZSH_CONFIG=~/.zsh
source $ZSH_CONFIG/path.zsh
source $ZSH_CONFIG/alias.zsh

if [ -f $ZSH_CONFIG/local.zsh ]; then
    source $ZSH_CONFIG/local.zsh
fi


#-------------------------------------------
# History
#-------------------------------------------

HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

# Do not memorize duplicate command
setopt hist_ignore_dups
setopt hist_ignore_all_dups

# Share history in other tabs
setopt share_history


#-------------------------------------------
# Completions
#-------------------------------------------

# Enable completions
autoload -Uz compinit
compinit -u
if [ -e /usr/local/share/zsh-completions ]; then
  fpath=(/usr/local/share/zsh-comletions $fpath)
fi

# Case insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Pack suggestion's list
setopt list_packed

# Color suggestion
autoload colors
zstyle ':completion:*' list-colors ''

# Correct commands
setopt correct

# Turn off beep sound
setopt no_beep

# Directory stack
DIRSTACKSIZE=100
setopt AUTO_PUSHD

# set default editer
export EDITOR='nvim'

# Git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }


#-------------------------------------------
# prompt
#-------------------------------------------

autoload -U promptinit; promptinit
prompt pure


#-------------------------------------------
# Key bindings
#-------------------------------------------

bindkey -v
bindkey "jj" vi-cmd-mode
bindkey "^?" backward-delete-char

# load zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# accept suggestion
bindkey '^f' autosuggest-accept

# load asdf
. /usr/local/opt/asdf/libexec/asdf.sh

alias copy-branch="git symbolic-ref --short HEAD | tr -d '\n' | pbcopy"

# use diff-highlight with tig in tmux
alias tig='TERM=xterm-256color tig'
