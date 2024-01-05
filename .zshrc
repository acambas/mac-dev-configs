# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Set default encoding to UTF-8
export LANG=en_US.UTF-8

# Use nvim as the default editor
export EDITOR="nvim"

export PATH=/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/homebrew/bin:/opt/homebrew/bin -
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# load secrets
[ -f ~/.secrets.sh ] && source ~/.secrets.sh


# ---------------------------- aliases ----------------------------
# General
alias reload="source ~/.zshrc"
alias c="clear"
alias hg="history 0 | grep"
alias lg="lazygit"

# Config
alias config.zsh="vim ~/.zshrc"
alias config.tmux="nvim ~/.tmux.conf"
alias config.kity="nvim ~/.config/kitty/kitty.conf"
alias config.vim="nvim ~/.config/nvim -c 'cd ~/.config/nvim'"
alias config.secrets="nvim ~/.secrets.sh"
alias config.macos="nvim ~/macos.sh"
alias config.amethyst="nvim ~/.amethyst.yml"

# Vim
alias vi="nvim"
alias vim="nvim"

# cd
alias ..="cd .."
alias ...="cd ../.."


# Tmux
alias tn="tmux new -d -s"
alias ta="tmux a -t"
alias tl="tmux ls"
alias tk="tmux kill-session -t"
alias td="tmux detach -t"
alias ts="tmux switch-client -t"
alias tss="~/tmux-sessionizer.sh"

# --------------------------------------------------------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t home || tmux new -s home -c $HOME
fi

# bun completions
[ -s "/Users/aleksandarcambas/.bun/_bun" ] && source "/Users/aleksandarcambas/.bun/_bun"
