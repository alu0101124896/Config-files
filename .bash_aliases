# ~/.bash_aliases: executed by ~/.bashrc.
#
# This file is sourced by ~/.bashrc, which defines aliases for the CLI.
# It's better to put them here, so that .bashrc stays readable.
#
# You can add your own aliases below.

# mantain aliases when using sudo
alias sudo='sudo '

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto --group-directories-first'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'

fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# colored diff
alias diff='colordiff'

# colored pacman
# alias pacman='pacman --color always'

# some more handy aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias c='clear'
alias h='history'
alias j='jobs -l'

alias open='xdg-open'

alias vi='vim'

alias mkdir='mkdir -pv'

alias gs='git status'
alias gitlog='git log --graph --abbrev-commit --decorate --date=relative --all'

alias untar='tar -zxvf'

alias ping='ping -c 5'
alias fastping='ping -c 100 -s.2'

alias bt='bluetoothctl'
alias rst-bt='systemctl --user restart pulseaudio && sudo systemctl restart bluetooth.service && bluetoothctl'

alias rst-pb='polybar-msg cmd restart'

alias mount='mount | column -t'

alias rm='rm -iv'
alias mv='mv -iv'
alias cp='cp -iv'
alias ln='ln -iv'

alias wget='wget -c'

# if ! [ -f /usr/bin/bat ] && [ -f /usr/bin/batcat ]; then
#     alias bat='batcat'
# fi
# # export PAGER='bat'

alias please='echo "sudo $(fc -ln -1)" && sudo $(fc -ln -1)'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
