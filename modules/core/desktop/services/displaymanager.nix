{ pkgs, ... } : {
    services.displayManager = {
        sddm = {
            enable = true; 
                theme = "${ import ../themes/sddm-theme.nix { inherit pkgs; } }";
            };  
        };
}