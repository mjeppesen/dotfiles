export PS1="\W $ "
set -o vi # vim keybindings

export EDITOR='vi -f'

if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  . /usr/local/etc/bash_completion.d/git-completion.bash
fi

# make terminal vim Macvim (until I get 'brew install macvim' to work)
alias vim=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi=/Applications/MacVim.app/Contents/MacOS/Vim

# JRUBY 1.9 causing problems
# export JRUBY_OPTS=--1.9 # should this be here?
export JAVA_OPTS=-d32 # might increase jruby load time

# vim: ft=sh
