{ pkgs, ... } : {
    programs = {
        hyprland = {
            enable = true;
            withUWSM  = true;
            xwayland.enable = true;
        };
        nix-ld = {
            enable = true;
            libraries = with pkgs; [];
        };
    };
}
