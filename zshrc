source $HOME/.antigen/antigen.zsh

SPACESHIP_KUBECONTEXT_SHOW=false

antigen use oh-my-zsh

antigen bundle git
antigen bundle nvm
antigen bundle pyenv
antigen bundle rbenv
antigen bundle ssh-agent
antigen bundle tmux

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship

antigen apply
