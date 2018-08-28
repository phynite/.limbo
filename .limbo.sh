alias on='setterm -cursor on'
alias off='setterm -cursor off'
alias c='clear'
alias q='exit'
alias x='exit'
alias repos='cd ~/Desktop/repos'
alias shscr='cd ~/Desktop/repos/shscr;cd src'
alias ins='sudo apt install '
exe()
{
	sudo cp "$1" /usr/bin/"$1"
}

dexe()
{
	sudo rm /usr/bin/"$1"
}

ch()
{
	chmod +x "$1"
}
