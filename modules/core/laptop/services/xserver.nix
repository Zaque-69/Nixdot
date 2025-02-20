{ pkgs, ... } : {
    services.xserver = {
        enable = true;
        windowManager.awesome.enable = true;
        displayManager.lightdm = {
            enable = true;
            background = pkgs.nixos-artwork.wallpapers.waterfall.gnomeFilePath
        };
        videoDrivers = ["nvidia"];
        xkb = {
            options = "grp:win_space_toogle";
            layout = "us,ro";
        };
    };
} 