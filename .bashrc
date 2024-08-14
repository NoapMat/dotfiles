#!/bin/bash

# my startup script, pretty basic
# este. ~/.bashrc

# Essentials
shopt -s histappend
PROMPT_COMMAND="history -n; history -a"
unset HISTFILESIZE
HISTSIZE=-1
ulimit -S -u 500

export PS1='\[\e[0;38;5;140m\]┌─[\[\e[0;38;5;175m\]\u\[\e[0;38;5;140m\]]\[\e[0;38;5;140m\]─[\[\e[0;38;5;175m\]\w\[\e[0;38;5;140m\]]\n\[\e[0;38;5;140m\]└──╼ \[\e[0m\]\$ \[\e[0m\]'


# variables
alias la='ls -a'
alias yt-dlp='yt-dlp --no-mtime -P /storage/emulated/0/Downloads'

# Functions
enc_b64(){
        tr -d '\r' < "$1" | base64 | tr -d '\n\r' > "$2"
}

cdls(){
        cd || return 1
        ls
}

speedtester(){
        curl -L "https://speed.cloudflare.com/__down?bytes=1145141919810" -o /dev/null
}
