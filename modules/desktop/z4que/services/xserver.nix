{ pkgs, ... } : {
    services = {
        displayManager.sddm.wayland.enable = true;
        xserver = {
            videoDrivers = ["nvidia"];
            xkb = {
                options = "grp:win_space_toogle";
                layout = "us,ro";
            };
        };
    };
} 

