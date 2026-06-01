#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '
exitstatus()
{
    if [[ $? == 0 ]]; then
        echo ':3'
    else
        echo 'UnU'
    fi
}

PS1='\[\033[34m╭❰〔\d〕❰〔\t〕❰〔\u〕❰❱〔\h〕❱〔\w〕$(exitstatus)\n╰❱❱❱\] '
# terminal-wakatime setup
export PATH="$HOME/.wakatime:$PATH"
eval "$(terminal-wakatime init)"

. "$HOME/.local/bin/env"