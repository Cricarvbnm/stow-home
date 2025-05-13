for conf in ${XDG_CONFIG_HOME:-$HOME/.config}/environment.d/*.conf; do
    emulate zsh -o all_export -c \
        "source $conf"
done

