{ pkgs, ... } : {
    services.xserver = {
        enable = true;
        desktopManager.plasma5.enable = true;
        displayManager.lightdm = {
            enable = true;
            background = pkgs.nixos-artwork.wallpapers.waterfall.gnomeFilePath;
        };
        xkb = {
            options = "grp:win_space_toogle";
            layout = "us,ro";
        };
    };
} 