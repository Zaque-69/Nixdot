{ pkgs, ... } : {
    fonts = {
        packages = with pkgs; [
            (nerdfonts.override { fonts = [ 
                "FiraCode"
                "DroidSansMono"
            ]; })
        ];
        fontconfig = {
            enable = true;
            hinting = {
                autohint = false;
                style = "slight";
            };
        };
    };
}