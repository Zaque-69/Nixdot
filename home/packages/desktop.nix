{ pkgs, ... } : {
    home.packages = with pkgs; [
        eww                                 # A widget system made in Rust to create widgets for any WM
        filezilla                           # Graphical FTP, FTPS and SFTP client 
        gptfdisk                            # Disk viewer
        grim                                # Grab images from a Wayland compositor
        gtk4                                # A multi-platform toolkit for creating graphical user interfaces
        krita                               # Photo editor
        libsForQt5.kdenlive                 # Video editor KDE
        libreoffice                         # Free Windows versions of softwares ( Excel, Powerpoint, ... )
        obs-studio                          # Free and open source software for video recording and live streaming
        pinta                               # Drawing/editing program modeled after Paint.NET
        slurp                               # Select a region in a Wayland compositor
        superTux                            # Classic 2D jump'n run sidescroller game
        tor-browser                         # Privacy-focused browser routing traffic through the Tor network
        tradingview                         # Charting platform for traders and investors
        vscode                              # Open source source code editor developed by Microsoft for Windows, Linux and macOS 
    ];
}