source ~/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle asdf
antigen bundle git
antigen bundle ssh-agent
antigen bundle tmux
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship

antigen apply
