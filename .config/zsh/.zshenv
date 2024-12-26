PATH=$PATH:/opt/android-sdk/emulator

[[ -d "$HOME/.local/bin" ]] && export PATH="$PATH:$HOME/.local/bin"

export ELECTRON_OZONE_PLATFORM_HINT=wayland

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

export LESSHISTFILE="$XDG_STATE_HOME"/less/history
export HISTFILE="$XDG_STATE_HOME"/zsh/history
