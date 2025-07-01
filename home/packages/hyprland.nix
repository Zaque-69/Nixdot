{ pkgs, ... } : {
    home.packages = with pkgs; [
        hyprdim                             # Automatically dim windows in Hyprland when switching between them
        hypridle                            # Hyprland's idle daemon
        hyprlock                            # Hyprland's GPU-accelerated screen locking utility
        hyprprop                            # Xprop replacement for Hyprland
        hyprsysteminfo                      # Tiny qt6/qml application to display information about the running system
    ];
}