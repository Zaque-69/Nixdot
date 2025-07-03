{ pkgs, ... } : {
    home.packages = with pkgs; [
        swaybg                              # Lightning fast wallpaper setter for Wayland
        swaylock                            # Screen locker for Wayland
        waylock                             # A small screenlocker for Wayland compositors
        wl-clipboard                        # Command-line copy/paste utilities for Wayland
        wl-color-picker                     # Wayland color picker that also works on wlroots
        wlogout                             # A wayland based logout menu
    ];
}