MAGENTA="\e[1;31m"
ORANGE="\e[1;33m"
GREEN="\e[1;32m"
PURPLE="\e[1;35m"
WHITE="\e[1;37m"
BOLD=""
RESET="\e[m"

PS1="\[$RESET\]\u@\[$GREEN\]\h\[$RESET\]:\[$PURPLE\]\w \[$RESET\]"
alias grep="grep --color=auto"
alias ls="ls -G"

export EDITOR=vim
