
# My zsh config for .limbo
# ~/.limbo.sh sourced in ~/.zshrc

# Aliases

alias on='setterm -cursor on'
alias off='setterm -cursor off'
alias c='clear'
alias q='exit'
alias x='exit'
alias repos='cd ~/Desktop/repos'
alias shscr='cd ~/Desktop/repos/shscr;cd src'
alias sa='sudo apt install '
alias gc='git clone '
alias zh='source ~/.zshrc'
alias v='vim'
alias s='sudo'
alias ka='killall '
alias rd='rm -rf '

# Functions

# Add an exec to path

exe()
{
	sudo cp "$1" /usr/bin/"$1"
}

# Remove an exec from path

dexe()
{
	sudo rm /usr/bin/"$1"
}

# Make a script an exec

ch()
{
	chmod +x "$1"
}
