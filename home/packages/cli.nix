{ pkgs, ... } : {
    home.packages = with pkgs; [
        bettercap                           #Man in the middle tool1
        curl                                #Command line tool for transferring files with URL syntax
        direnv                              #A shell extension that manages your environment
        dunst                               #Lightweight and customizable notification daemon
        gammastep                           #Screen color temperature manager
        gdb                                 #The GNU Project debugger
        gotop                               #Usage statistics ( CPU, GPU, RAM )
        grim                                #Grab images from a Wayland compositor
        htop                                #Usage statistics ( apps )
        killall                             #Killing all the processes 
        lm_sensors                          #Usage statistics
        neofetch                            #A fast, highly customizable system info script
        nitch                               #Simple PC presentation
        nurl                                #Generate Nix fetcher calls from repository URLs
        nvd                                 #Nix/NixOS package version diff tool
        openssl                             #Cryptographic library that implements the SSL and TLS protocols
        picom                               #Standalone X11 compositor
        sops                                #Passwords ecryptor
        strace                              #A system call tracer for Linux
        yazi                                #Blazing fast terminal file manager written in Rust, based on async I/O
        xorg.xev                            #Key recorder
    ];
}