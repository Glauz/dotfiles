#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#Disable scroll lock
stty -ixon
TERM=xterm-256color

#Powerline in terminal
function _update_ps1() {
    PS1="$(~/powerline-shell.py $? 2> /dev/null)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

#Ruby Path
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

export VISUAL="vim"
export EDITOR="vim"
