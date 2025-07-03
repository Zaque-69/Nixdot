{ pkgs, ... } : {
    home.packages = with pkgs; [
        aquamarine                          # Very light linux rendering backend library
        hyprlang                            # Official implementation library for the hypr config language
        hyprcursor                          # Hyprland cursor format, library and utilities
        hyprutils                           # Small C++ library for utilities used across the Hypr* ecosystem
        hyprgraphics                        # Cpp graphics library for Hypr* ecosystem
        cmake                               # Cross-platform, open-source build system generator
        meson                               # Open source, fast and friendly build system made in Python
        cpio                                # Program to create or extract from cpio archives
        pkg-config                          # Tool that allows packages to find out information about other packages (wrapper script)
        ninja                               # Small build system with a focus on speed
        gcc                                 # GNU Compiler Collection, version 14.3.0 (wrapper script)
        gnumake                             # Tool to control the generation of non-source files from sources
        wayland-protocols                   # Wayland roots protocol extensions
        udis86                              # Easy-to-use, minimalistic x86 disassembler library (libudis86) 
        hyprwayland-scanner                 # Hyprland version of wayland-scanner in and for C++
        libGLU                               # GL Vendor-Neutral Dispatch library
        wayland-utils                       # Wayland utilities (wayland-info)
        aquamarine 
        hyprlang 
        hyprutils 
        hyprcursor 
        hyprgraphics 
    ];
}