{ pkgs, ... } : {
    environment = {
        systemPackages = with pkgs; [
            firefox                             #A web browser built from Firefox source tree
            geany                               #Simple text editor ( equivalent of Notepad++ )  
            git                                 #Distributed version control system
            pamixer                             #Pulseaudio command line mixer
            qimgv                               #A Qt5 image viewer with optional video support
            vlc                                 #Cross-platform media player and streaming server
            xfce.thunar                         #Xfce file manager
            zathura                             #A highly customizable and functional PDF viewer
            zip                                 #Compressor/archiver for creating and modifying zipfiles
        ];
    };
}