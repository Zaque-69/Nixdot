{
    nix = {
        settings = {
            experimental-features = [ 
                "nix-command"
                "flakes"
            ]; 
            trusted-users = [
                "root"
                "z4que"
                "@wheel"
            ];
            auto-optimise-store = true;
        };
        gc = {
            automatic = true;
            dates = "weekly";
        };
        checkAllErrors = true;
    };

    nixpkgs = {
        config = {
            allowUnfree = true;
            allowBroken = true;
        };
    };
}