#####################################################
##		   ____             __				       ## 
##	 	  / __ )____ ______/ /_  __________	       ##
##		 / __  / __ `/ ___/ __ \/ ___/ ___/	       ##
##	    / /_/ / /_/ (__  ) / / / /  / /__	   	   ##
##	   /_____/\__,_/____/_/ /_/_/   \___/	       ##
##												   ##
#####################################################
source /etc/profile
stty -ixon # Disable ctrl-s and ctrl-q
#neofetch
colorscript -r

#default editor
export VISUAL=nvim
export EDITOR="$VISUAL"
#ranger exit
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

#Inscrease key speed via rate change
xset r rate 300 50

#alias
alias ls="lsd"
alias ra="ranger"
alias svim="sudo nvim"
alias spacman="sudo pacman"
alias cl='clear'
alias vim='nvim'
alias config='/usr/bin/git --git-dir=/home/thinh_nguyen/.dotfiles/ --work-tree=/home/thinh_nguyen'
alias rstoggle='pkill -USR1 redshift'
export PATH="/home/thinh_nguyen/.splashkit:$PATH"
export PATH="/home/thinh_nguyen/.splashkit:$PATH"
