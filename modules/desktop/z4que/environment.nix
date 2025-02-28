{ pkgs, ... } : {
    environment = {
        sessionVariables = {
            WRL_NO_HARDWARE_CURSORS = "1";
            NIXOS_OZONE_WL = "1";
        }; 
        variables = {
            CODE = "code --ozone-platform-hint . .";
            NVIM = "nix run $HOME/Desktop/dot/nvim# --";
            BROWER = "firefox";
            LANG = "en_US.UTF-8";
        };
        systemPackages = with pkgs; [
            firefox                             #A web browser built from Firefox source tree
            fish                                #Smart and user-friendly command line shell
            geany                               #Simple text editor ( equivalent of Notepad++ )  
            git                                 #Distributed version control system
            kitty                               #A modern, hackable, featureful, OpenGL based terminal emulator
            libsForQt5.qt5ct                    #Qt5 Configuration Tool
            libsForQt5.qt5.qtquickcontrols2     #Cross-platform application framework for C++
            libsForQt5.qt5.qtgraphicaleffects   #Cross-platform application framework for C++
            pamixer                             #Pulseaudio command line mixer
            qimgv                               #A Qt5 image viewer with optional video support
            sddm                                #QML based X11 display manager
            swww                                #Efficient animated wallpaper daemon for wayland, controlled at runtime
            unzip                               #An extraction utility for archives compressed in .zip format
            vlc                                 #Cross-platform media player and streaming server
            wayland                             #Wayland C++ binding
            wofi                                #A launcher/menu program for wlroots based wayland compositors such as sway
            xfce.thunar                         #Xfce file manager
            zathura                             #A highly customizable and functional PDF viewer
            zip                                 #Compressor/archiver for creating and modifying zipfiles
        ];
    };
}