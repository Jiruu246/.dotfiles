source /etc/profile

#neofetch
colorscript -r

#export GTK_IM_MODULE=ibus
#export XMODIFIERS=@im=ibus
#export QT_IM_MODULE=ibus
#ibus-daemon -drx

#alias
alias ls="lsd"
alias ra="ranger"
#default editor
export VISUAL=vim
export EDITOR="$VISUAL"

#ranger exit
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias cl='clear'
alias vim='nvim'
alias config='/usr/bin/git --git-dir=/home/thinh_nguyen/.dotfiles/ --work-tree=/home/thinh_nguyen'