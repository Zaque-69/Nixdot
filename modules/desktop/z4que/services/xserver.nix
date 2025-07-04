{ pkgs, ... } : {
    services.xserver = {
        videoDrivers = ["nvidia"];
        xkb = {
            options = "grp:win_space_toogle";
            layout = "us,ro";
        };
    };
} 