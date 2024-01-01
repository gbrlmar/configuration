#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Defaults
export EDITOR="nvim"
export TERMINAL="kitty"
export TERMINAL_PROG="kitty"
export BROWSER="firefox"

# Variables 
export XDG_CONFIG_HOME="$HOME/.config"
export GOPATH=$HOME/go

# Add to path
export PATH="$GOPATH/bin:$PATH"

. "$HOME/.cargo/env"

# Start graphical on user's current tty if not allready running.
[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx
