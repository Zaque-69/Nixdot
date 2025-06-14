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
        name = "Materia-dark";
        package = pkgs.materia-theme;
    };
  };
}
