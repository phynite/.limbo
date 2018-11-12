
# My zsh config for .limbo
# ~/.limbo.sh sourced in ~/.zshrc

TERM=xterm-256color

# Aliases

alias on='setterm -cursor on'
alias off='setterm -cursor off'
alias c='clear'
alias q='exit'
alias x='exit'
alias sa='sudo apt install '
alias gc='git clone '
alias zh='source ~/.zshrc'
alias v='vim'
alias s='sudo'
alias ka='killall '
alias bb='cd ..'
alias tarc='tar -czvf '
alias tare='tar -xvzf '
alias gms='groff -ms '

alias repos='cd ~/repos'
alias shscr='cd ~/repos/shscr/src'
alias fl='fortune | lolcat'

vclr="/usr/share/vim/vim80/colors"

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
