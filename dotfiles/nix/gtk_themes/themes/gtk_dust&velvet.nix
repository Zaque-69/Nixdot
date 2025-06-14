{ pkgs, ... } : {

gtk = {
    enable = true;
    cursorTheme = {
        name = "Bibata-Modern-Classic";
        package = pkgs.bibata-cursors;
    };
    font.name = "DejaVu";
    iconTheme = {
      name = "Nordzy-red-dark";
	  package = pkgs.nordzy-icon-theme;
    };
    theme = {
        name = "Graphite-Dark";
        package = pkgs.graphite-gtk-theme;
    };
  };
}
