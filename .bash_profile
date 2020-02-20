################### aliases
alias sourcebp='source ~/.bash_profile'
alias wifi='open http://detectportal.firefox.com/success.txt'

alias k='kubectl'
alias gst='git status'

alias understood='cd ~/workspace/understood'
alias site='cd  /Users/armaanshah96/Documents/Independent\ Coding/websiteV2'



################## plugins

### kubectl auto-complete
complete -F __start_kubectl k
source <(kubectl completion bash)

### fuzzyfinder settings
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'



################## PS1
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

parse_k8s_context() {
  kubectl config get-contexts 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/' | awk '{print $1}' #| awk -F'/' '{print $2}'
}

COL="\[\e[1;35m\]"
CYAN="\[\e[0;36m\]"
RED="\[\e[1;31m\]"
BLACK="\[\e[0;30m\]"

export PS1="${CYAN}(\t) ${COL}\$(parse_k8s_context) ${BLACK}\w ${RED}\$(parse_git_branch) \n 👀 ${BLACK}"



################## MISC 🦄🤓🤷
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export JAVA_HOME=/Library/Java/Home
export JUNIT_HOME=/Library/JUNIT/
export CLASSPATH=$CLASSPATH:$JUNIT_HOME/junit-4.12.jar
export CLASSPATH=$CLASSPATH:$JUNIT_HOME/hamcrest-core-1.3.jar

