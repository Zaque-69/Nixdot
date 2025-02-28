{ pkgs, ... } : {
    fonts = {
        packages = with pkgs; [
            nerd-fonts._3270
            nerd-fonts.agave
            nerd-fonts.droid-sans-mono
            nerd-fonts.fira-code
            miracode
            monocraft
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