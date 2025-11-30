{ pkgs, ... } : {
    home.packages = with pkgs; [
        burpsuite                           # Integrated platform for performing security testing of web applications
        eww                                 # A widget system made in Rust to create widgets for any WM
        filezilla                           # Graphical FTP, FTPS and SFTP client 
        gptfdisk                            # Disk viewer
        grim                                # Grab images from a Wayland compositor
        gtk4                                # A multi-platform toolkit for creating graphical user interfaces
        libreoffice                         # Free Windows versions of softwares ( Excel, Powerpoint, ... )
        obs-studio                          # Free and open source software for video recording and live streaming
        pinta                               # Drawing/editing program modeled after Paint.NET
        qutebrowser                         # Keyboard-focused browser with a minimal GUI
        slurp                               # Select a region in a Wayland compositor
        superTux                            # Classic 2D jump'n run sidescroller game
        tor-browser                         # Privacy-focused browser routing traffic through the Tor network
        ungoogled-chromium                  # Open source web browser from Google, with dependencies on Google web services removed
        vscode                              # Open source source code editor developed by Microsoft for Windows, Linux and macOS 
        wireshark                           # Powerful network protocol analyzer
    ];
}