export PS1='\[\033[0;34m\]\W\[\033[0;32m\]$(__git_ps1) \[\033[0m\]$ '
# set -o vi # vim keybindings

export PATH=/usr/local/bin:$PATH
# for GAMS
export PATH=$PATH:/Applications/GAMS/gams24.1_osx_x64_64_sfx

# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
# PATH=$PATH:/usr/local/share/npm/bin # Node package manager

# system vim exits with success exit code (0), works with git terminal
export EDITOR=/usr/bin/vim
export INPUTRC=~/.inputrc

if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  . /usr/local/etc/bash_completion.d/git-completion.bash
fi

# make terminal vim Macvim (until I get 'brew install macvim' to work)
# alias vim=/Applications/MacVim.app/Contents/MacOS/Vim
# alias vi=/Applications/MacVim.app/Contents/MacOS/Vim

export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL=ignoredups
export HISTFILE=/Users/matt/.bash_history_jeppesen

# start autojump (usage: type j)
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
