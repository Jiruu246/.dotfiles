source /etc/profile

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
alias cl='clear'
alias vim='nvim'
alias config='/usr/bin/git --git-dir=/home/thinh_nguyen/.dotfiles/ --work-tree=/home/thinh_nguyen'
alias rstoggle='pkill -USR1 redshift'
export PATH="/home/thinh_nguyen/.splashkit:$PATH"
export PATH="/home/thinh_nguyen/.splashkit:$PATH"
