{
    nix = {
        settings = {
            trusted-users = [
                "root"
                "@wheel"
            ];

            experimental-features = [ 
                "nix-command"
                "flakes"
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