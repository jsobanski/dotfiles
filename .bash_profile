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
source /Users/jsobanski/.ec2/ec2_bash_profile

# MacPorts Installer addition on 2013-02-06_at_11:27:28: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

source /Users/jsobanski/.ec2/ec2_bash_profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export EDITOR=vim

export MAVEN_OPTS=-Dlogback.configurationFile=/Users/jsobanski/jsobanski_logback.xml
