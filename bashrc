export PS1="\W $ "
set -o vi # vim keybindings

export PATH=/usr/local/bin:$PATH
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export EDITOR='mvim -f'

if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  . /usr/local/etc/bash_completion.d/git-completion.bash
fi

# make terminal vim Macvim (until I get 'brew install macvim' to work)
alias vim=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi=/Applications/MacVim.app/Contents/MacOS/Vim
