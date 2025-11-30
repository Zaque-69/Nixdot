{ pkgs, ... } : {

gtk = {
    enable = true;
    cursorTheme = {
        name = "Bibata-Modern-Classic";
        package = pkgs.bibata-cursors;
    };
    font.name = "DejaVu";
    iconTheme = {
      name = "Nordzy";
	  package = pkgs.nordzy-icon-theme;
    };
    theme = {
        name = "rose-pine";
        package = pkgs.rose-pine-gtk-theme;
    };
  };
}
