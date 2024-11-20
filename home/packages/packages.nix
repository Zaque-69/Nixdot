{ pkgs, ... } : {
    home.packages = with pkgs; [
        bettercap                           #Man in the middle tool1
        curl                                #Command line tool for transferring files with URL syntax
        direnv                              #A shell extension that manages your environment
        dunst                               #Lightweight and customizable notification daemon
        eww                                 #A widget system made in Rust to create widgets for any WM
        filezilla                           #Graphical FTP, FTPS and SFTP client 
        gammastep                           #Screen color temperature manager
        gdb                                 #The GNU Project debugger
        ghex                                #Hex editor for GNOME desktop environment
        gotop                               #Usage statistics ( CPU, GPU, RAM )
        gptfdisk                            #Disk viewer
        grim                                #Grab images from a Wayland compositor
        gtk4
        htop                                #Usage statistics ( apps )
        hyprdim                             #Automatically dim windows in Hyprland when switching between them
        imhex                               #Hex Editor for Reverse Engineers, Programmers and people who value their retinas when working at 3 AM
        jq                                  #JQ language
        killall                             #Killing all the processes 
        krita                               #Photo editor
        libsForQt5.kdenlive                 #Video editor KDE
        libreoffice                         #Free Windows versions of softwares ( Excel, Powerpoint, ... )
        lm_sensors                          #Usage statistics
        neofetch                            #A fast, highly customizable system info script
        nitch                               #Simple PC presentation
        nix-output-monitor                  #Processes output of Nix commands to show helpful and pretty information
        nix-prefetch-git                    #Script used to obtain source hashes for fetchgit
        nix-template                        #Make creating nix expressions easy
        nurl                                #Generate Nix fetcher calls from repository URLs
        nvd                                 #Nix/NixOS package version diff tool
        openssl                             #Cryptographic library that implements the SSL and TLS protocols
        picom                               #Standalone X11 compositor
        pinta                               #Drawing/editing program modeled after Paint.NET
        slurp                               #Select a region in a Wayland compositor
        sops                                #Passwords ecryptor
        strace                              #A system call tracer for Linux
        superTux                            #Classic 2D jump'n run sidescroller game
        swaylock                            #Screen locker for Wayland
        tradingview                         #Charting platform for traders and investors
        vscode                              #Open source source code editor developed by Microsoft for Windows, Linux and macOS 
        wayfarer                            #Screen recorder for GNOME / Wayland / pipewire
        waylock                             #A small screenlocker for Wayland compositors
        wl-clipboard                        #Command-line copy/paste utilities for Wayland
        wl-color-picker                     #Wayland color picker that also works on wlroots
        wlogout                             #A wayland based logout menu
        yazi                                #Blazing fast terminal file manager written in Rust, based on async I/O
        xorg.xev                            #Key recorder
        zsync                               #File distribution system using the rsync algorithm
    ];
}