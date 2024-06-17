
# zsh
bindkey -e
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

# Auto suggestion and Syntax highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Colorful pagers(man,less)
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'



### XDG_RUNTIME_DIR for mpv hardware acceleration
## if [ -z "$XDG_RUNTIME_DIR" ]; then
##     export XDG_RUNTIME_DIR=/tmp
##     if [ ! -d  "$XDG_RUNTIME_DIR" ]; then
##         mkdir "$XDG_RUNTIME_DIR"
##         chmod 0700 "$XDG_RUNTIME_DIR"
##     fi
## fi



# Important aliases

alias ls='ls --color=auto'
alias df='df -Th'
alias grep='grep --color=auto'
alias free="free -mth"
alias merge="xrdb -merge ~/.Xresources"
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yt='youtube-dl'
alias probe="sudo -E hw-probe -all -upload"



# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

# End of lines configured by zsh-newuser-install

# Command completion
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

# prompt ZSH
autoload -Uz promptinit
promptinit
prompt adam2

## PERSONAL ALIASES
[[ -f ~/.zshrc-personal ]] && . ~/.zshrc-personal

## Changing the syntax colour to blue

ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[precommand]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[arg0]=fg=cyan,bold
