finishedStr='\n\n\n              0000_____________0000________0000000000000000__000000000000000000+\n            00000000_________00000000______000000000000000__0000000000000000000+\n           000____000_______000____000_____000_______0000__00______0+\n          000______000_____000______000_____________0000___00______0+\n         0000______0000___0000______0000___________0000_____0_____0+\n         0000______0000___0000______0000__________0000___________0+\n         0000______0000___0000______0000_________000___0000000000+\n         0000______0000___0000______0000________0000+\n          000______000_____000______000________0000+\n           000____000_______000____000_______00000+\n            00000000_________00000000_______0000000+\n              0000_____________0000________000000007;'




#ALIASES
alias ls="ls -lG"
alias finished='echo -e "$finishedStr"; for i in {1..10}; do sleep 0.2; echo -en "\007"; done'
#export PS1="\t \u@\h:--------------------------------------------------\n\w\n\$ "
source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
export PS1="[\[\033[32m\]\w\[\033[0m\]]\$(__git_ps1)\n\[\033[1;36m\]\t \u\[\033[32m\]$ \[\033[0m\]"


export SSH_AUTH_SOCK=$HOME/.yubiagent/sock

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias smc-off='smc -k "FS! " -w 0000'
alias q='smc-off && pmset sleepnow'
alias smc-6k='smc -k "FS! " -w 0003 && smc -k F0Tg -w 5dc0 && smc -k F1Tg -w 5dc0'
alias smc-3k='smc -k "FS! " -w 0003 && smc -k F0Tg -w 2ee0 && smc -k F1Tg -w 2ee0'

export PATH=$PATH:/Applications/smcFanControl.app/Contents/Resources
