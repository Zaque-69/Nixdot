{ pkgs, ... } : {

gtk = {
    enable = true;
    cursorTheme = {
        name = "Bibata-Modern-Classic";
        package = pkgs.bibata-cursors;
    };
    font.name = "DejaVu";
    iconTheme = {
      name = "Dracula";
      package = pkgs.dracula-icon-theme;
    };
    theme = {
        name = "rose-pine";
        package = pkgs.rose-pine-gtk-theme;
    };
  };
}
