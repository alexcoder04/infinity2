#!/usr/bin/zsh
#        _                        _            ___  _  _
#   __ _| | _____  _____ ___   __| | ___ _ __ / _ \| || |
#  / _` | |/ _ \ \/ / __/ _ \ / _` |/ _ \ '__| | | | || |_
# | (_| | |  __/>  < (_| (_) | (_| |  __/ |  | |_| |__   _|
#  \__,_|_|\___/_/\_\___\___/ \__,_|\___|_|   \___/   |_|
#
# Copyright (c) 2024 alexcoder04 <alexcoder04@protonmail.com>
#      
# zsh config

alias ls='ls -lh --color=auto'
alias lsd='figlet LSD; ls -lh --color=auto'
alias grep='grep --color=auto'

alias q="exit"
alias :q="exit"

alias vim="nvim"
alias vi="nvim"
alias v="nvim"

alias s="systemctl"
alias py="python3"
alias cls="clear"
alias webserver="python3 -m http.server 1234"

alias 2fa="pass otp -c uni/_rwth"
abbrev-alias eclipse="cd ~/Dev/Applications/eclipse && ./eclipse"

# git {{{
abbrev-alias gad="git add"
abbrev-alias gada="git add ."
abbrev-alias gcln="git clone"
abbrev-alias gcom="git commit -m"
abbrev-alias gdf="git diff"
abbrev-alias gpl="git pull"
abbrev-alias gps="git push"
abbrev-alias gst="git status"
# }}}

# go to places {{{
abbrev-alias td="cd ~/Dev"
abbrev-alias tdoc="cd ~/Docs"
abbrev-alias tp="cd ~/PicVidMus/$(date +%Y)"
abbrev-alias tpap="cd ~/Docs/Papiere"
abbrev-alias ts="cd ~/School"
abbrev-alias tt="cd ~/Temp"

abbrev-alias tui="lf ~/Uni/WS2024/Info1/git"
# }}}

# edit config files {{{
abbrev-alias ev="nvim $XDG_CONFIG_HOME/nvim/init.vim"
abbrev-alias ez="nvim $XDG_CONFIG_HOME/zsh/.zshrc"
abbrev-alias elf="nvim $XDG_CONFIG_HOME/lf/lfrc"
# }}}

