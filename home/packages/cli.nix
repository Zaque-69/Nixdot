{ pkgs, ... } : {
    home.packages = with pkgs; [
        aircrack-ng                                 # WiFi security auditing tools suite         
        bettercap                                   # Man in the middle tool1
        binwalk                                     # Firmware Analysis Tool
        brightnessctl                               # This program allows you read and control device brightness
        curl                                        # Command line tool for transferring files with URL syntax
        direnv                                      # A shell extension that manages your environment
        dunst                                       # Lightweight and customizable notification daemon
        exiftool                                    # Tool to read, write and edit EXIF meta information 
        file                                        # Program that shows the type of files
        gammastep                                   # Screen color temperature manager
        gdb                                         # The GNU Project debugger
        grim                                        # Grab images from a Wayland compositor
        htop                                        # Usage statistics ( apps )
        hwinfo                                      # Hardware detection tool from openSUSE
        john
        lm_sensors                                  # Usage statistics
        neofetch                                    # A fast, highly customizable system info script
        nitch                                       # Simple PC presentation
        nmap                                        # Network exploration tool and security/port scanner    
        npiet                                       # Interpreter for piet programs. Also includes npietedit and npiet-foogol
        nurl                                        # Generate Nix fetcher calls from repository URLs
        openssl                                     # Cryptographic library that implements the SSL and TLS protocols
        p7zip                                       # New p7zip fork with additional codecs and improvements (forked from https://sourceforge.net/projects/p7zip/)
        pngcheck                                    # Verifies the integrity of PNG, JNG and MNG files
        pngcrush                                    # PNG optimizer
        sherlock                                    # Hunt down social media accounts by username across social networks
        sops                                        # Passwords ecryptor
        steghide                                    # Open source steganography program
        strace                                      # A system call tracer for Linux
        sqlmap                                      # Automatic SQL injection and database takeover tool
        upx                                         # Ultimate Packer for eXecutables
        yazi                                        # Blazing fast terminal file manager written in Rust, based on async I/O
        xorg.setxkbmap                              # Setxkbmap sets the keyboard layout for the current X session only
        xorg.xev                                    # Key recorder
        yt-dlp                                      # Command-line tool to download videos from YouTube.com and other sites (youtube-dl fork)
        wget                                        # Tool for retrieving files using HTTP, HTTPS, and FTP
        zenity
        zsteg                                       # Detect stegano-hidden data in PNG & BMP
    ];
}