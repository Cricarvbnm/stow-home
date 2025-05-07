# zplugin init
ZPLUG_HOME=${XDG_DATA_HOME:-$HOME/.local/share}/zplug
source /usr/share/zsh/scripts/zplug/init.zsh

# plugins
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-completions", defer:2
zplug "plugins/sudo", from:oh-my-zsh

# zplugin check
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

