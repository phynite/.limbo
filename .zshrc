# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/gmk/.oh-my-zsh"

~/.scripts/nix

printf "\n"
todo
printf "\n"

stty -ixon

ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir user)

POWERLEVEL9K_DIR_HOME_BACKGROUND="240"
POWERLEVEL9K_DIR_HOME_FOREGROUND="255"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="240"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="255"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="240"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="255"
POWERLEVEL9K_DIR_ETC_BACKGROUND="240"
POWERLEVEL9K_DIR_ETC_FOREGROUND="255"

POWERLEVEL9K_USER_DEFAULT_FOREGROUND="255"

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=''
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_to_last"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# My zsh config for .limbo
# ~/.limbo.sh sourced in ~/.zshrc

TERM=xterm-256color

# Aliases

alias on='setterm -cursor on'
alias off='setterm -cursor off'
alias c='clear'
alias q='exit'
alias x='exit'
alias pm='sudo pacman -Sy '
alias gc='git clone '
alias v='vim'
alias s='sudo'
alias ka='killall '
alias bb='cd ..'
alias h='cd ~'
alias tarc='tar -czvf '
alias tare='tar -xvzf '
alias gms='groff -ms '
alias p='pluto'
alias aura="aura -c 'c0 c7'"

alias repos='cd ~/repos'
alias fl='fortune | lolcat'
alias n='neofetch --w3m --loop'
alias v3='vim ~/.config/i3/config'
alias d3='cd ~/.config/i3'

vd="/usr/share/vim/vim81/colors"

# Functions

# Add an exec to path

exe() {
	sudo cp "$1" /usr/bin/"$1"
}

# Remove an exec from path

dexe() {
	sudo rm /usr/bin/"$1"
}

# Make a script an exec

ch() {
	chmod +x "$1"
}

# Download a repo from github

gh() {
	git clone https://github.com/$1
}

# Move a file back on directory

mb() {
	mv $1 ../$1
}

# compile rust smartly

rc() {
	rustc $1 -A warnings
}
