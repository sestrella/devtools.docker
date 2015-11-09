export EDITOR=vim
export TERM=xterm-256color

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

alias tas='tmux attach-session -t'
alias tks='tmux kill-session -t'
alias tls='tmux list-sessions'
alias tns='tmux new-session -s'

eval "$(pyenv init -)"
eval "$(rbenv init -)"

source /usr/share/nvm/init-nvm.sh
