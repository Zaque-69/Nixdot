{ pkgs, ... } : {

gtk = {
    enable = true;
    cursorTheme = {
        name = "Bibata-Modern-Classic";
        package = pkgs.bibata-cursors;
    };
}
