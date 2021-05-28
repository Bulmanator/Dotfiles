# Load .bashrc
[[ -f "$HOME/.bashrc" ]] && . "$HOME/.bashrc"

# Start sway as window manager if in TTY1
if [[ ! $WAYLAND_DISPLAY && $XDG_VTNR -eq 1 ]];
then
    export GTK_THEME=Adwaita:dark
    export MOZ_ENABLE_WAYLAND=1
    export QT_QPA_PLATFORM=wayland-egl

    if [ "$HOSTNAME" == "Kanto" ];
    then
        exec sway --config "$HOME/.config/sway/kanto.config"
    elif [ "$HOSTNAME" == "Tokyo" ];
    then
        exec sway --config "$HOME/.config/sway/tokyo.config"
    fi
fi
