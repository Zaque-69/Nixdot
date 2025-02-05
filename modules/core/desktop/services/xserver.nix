{ pkgs, ... } : {
    services.xserver = {
        displayManager.sddm.wayland.enable = true;
        videoDrivers = ["nvidia"];
        xkb = {
            options = "grp:win_space_toogle";
            layout = "us,ro";
        };
    };
} 