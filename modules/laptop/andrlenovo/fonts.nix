{ pkgs, ... } : {
    fonts = {
        packages = with pkgs; [
            nerd-fonts.droid-sans-mono
            nerd-fonts.fira-code
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