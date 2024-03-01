#        _                        _            ___  _  _
#   __ _| | _____  _____ ___   __| | ___ _ __ / _ \| || |
#  / _` | |/ _ \ \/ / __/ _ \ / _` |/ _ \ '__| | | | || |_
# | (_| | |  __/>  < (_| (_) | (_| |  __/ |  | |_| |__   _|
#  \__,_|_|\___/_/\_\___\___/ \__,_|\___|_|   \___/   |_|
#
# Copyright (c) 2020-2022, 2024 alexcoder04 <alexcoder04@protonmail.com>
#      
# shell environmental variables (bash/dash/zsh)

export ZDOTDIR="$HOME/.config/zsh"
[ -z "$HOSTNAME" ] \
  && export HOSTNAME="$(cat /etc/hostname | tr -d "[:space:]")" \
  || export HOSTNAME

# XDG variables {{{
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_DIRS="/etc/xdg"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

if command -v flatpak >/dev/null; then
  export XDG_DATA_DIRS="/usr/local/share:/usr/share:/var/lib/flatpak/exports/share:$XDG_DATA_HOME/flatpak/exports/share"
else
  export XDG_DATA_DIRS="/usr/local/share:/usr/share"
fi
# }}}

# tricks so other programs accept XDG {{{
export ANDROID_HOME="$XDG_DATA_HOME/android"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GEM_HOME="$XDG_DATA_HOME/gem"
export GNUPGHOME="$XDG_DATA_HOME/gpg"
export GOPATH="$XDG_DATA_HOME/go"
export KERAS_HOME="$XDG_SHARE_HOME/keras"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NVM_DIR="$XDG_DATA_HOME/nvm"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/pythonrc"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export XRESOURCES="$XDG_CONFIG_HOME/X11/Xresources"
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"
# }}}

# set default programs
#export TERMINAL="launch" # terminal emulator wrapper
export TERMINAL="kgx" # new gnome console
export EDITOR="nvim"

# PATH parts
PERL_PATH="/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
BASE_PATH="/usr/local/bin:/usr/bin:/bin:$PERL_PATH:/usr/lib/jvm/default/bin:/usr/local/sbin:/usr/sbin:/sbin"
PMS_PATH="$CARGO_HOME/bin:$GOPATH/bin:$GEM_HOME/bin:$XDG_DATA_HOME/npm/bin"

# finally, PATH
export PATH="$MACHINE_PATH:$HOME/.local/bin:$PMS_PATH:$BASE_PATH"

# different settings
export GOPROXY="direct" # no fancy google cache for go
export MOZ_ENABLE_WAYLAND=1 # native wayland for firefox

