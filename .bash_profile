# Load .bashrc
[[ -f "$HOME/.bashrc" ]] && . "$HOME/.bashrc"

# Start sway as window manager if in tty1
if [[ ! $WAYLAND_DISPLAY && $XDG_VTNR -eq 1 ]];
then
    export GTK_THEME=Adwaita:dark
    export MOZ_ENABLE_WAYLAND=1
    export QT_QPA_PLATFORM=wayland-egl
    export QT_QPA_PLATFORMTHEME=qt5ct
    export SDL_VIDEODRIVER=wayland

    if [ "$HOSTNAME" == "tokyo" ];
    then
        # Running on laptop
        exec sway --config "$HOME/.config/sway/tokyo.sway"
    else
        echo "Error: Running on unknown device \"$HOSTNAME\""
    fi
fi
