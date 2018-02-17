# Colorize grep
alias grep='grep --color=auto'

PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups
# increase history size
export HISTSIZE=100000
export HISTFILESIZE=100000
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

. $HOME/.bashrc_jot
. $HOME/.bashrc_branch_prompt
. $HOME/.bashrc_go
. $HOME/.bashrc_rust
