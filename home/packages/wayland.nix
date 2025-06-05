{ pkgs, ... } : {
    home.packages = with pkgs; [
        hyprdim                             # Automatically dim windows in Hyprland when switching between them
        swaylock                            # Screen locker for Wayland
        wayfarer                            # Screen recorder for GNOME / Wayland / pipewire
        waylock                             # A small screenlocker for Wayland compositors
        wl-clipboard                        # Command-line copy/paste utilities for Wayland
        wl-color-picker                     # Wayland color picker that also works on wlroots
        wlogout                             # A wayland based logout menu
    ];
}