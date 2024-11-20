{ pkgs, ... } : {
    programs = {
        hyprland = {
            enable = true;
            xwayland.enable = true;
        };
        nix-ld = {
            enable = true;
            libraries = with pkgs; [];
        };
    };
}
