# Path to your oh-my-zsh installation.
fpath=($HOME/completion_zsh $fpath)

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

PROMPT='%F{green}%n%f=>%F{blue}%~%f | '

path+=('/home/evanp/.local/bin')
path+=('/home/evanp/.local/share/gem/ruby/3.0.0/bin')
export EDITOR='nvim'
export PATH=$HOME/bin:$PATH
export PATH=/opt/homebrew/bin:$PATH

# alias
alias n='nvim'
alias rm='rm -I'

alias gl='git log --oneline --graph --decorate'
alias gla='git log --oneline --graph --decorate --all'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gb='git branch'
alias gr='git restore'
alias gd='git diff'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
