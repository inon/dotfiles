#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


# Customize to your needs...
ZSH_THEME="random"

plugins=(git tmux ruby rails npm node rvm colored-man colorize github jira vagrant virtualenv pip python javascript brew osx zsh-syntax-highlighting)

#alias
alias gst='git status'
alias gp='git push'
alias gpl='git pull'
alias ga='git add'
alias gcam='git commit -am'
alias gcm='git commit -m'
alias tks='tmux kill-session -t'
alias ta='tmux attach -t'

# Add env.sh
#source ~/Projects/config/env.sh
eval "$(rbenv init -)"
export ANDROID_HOME=/usr/local/opt/android-sdk
export GOPATH=$HOME/Go
export GOBIN=$GOPATH/bin

# For Go Binaries installed by the Go installer
export PATH=$PATH:/usr/local/go/bin

# For Go binaries you compiled yourself
export PATH=$PATH:$GOPATH/bin
export PATH="$(yarn global bin):$PATH"
export PATH=$PATH:$HOME/bin
export EDITOR="/usr/local/bin/vim"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
