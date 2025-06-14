{ pkgs, ... } : {
    home.packages = with pkgs; [
        cargo                               # Downloads your Rust project's dependencies and builds your project
        cmake                               # CMake is an open-source, cross-platform family of tools designed to build, test and package software
        gcc14                               # C compiler
        jdk23                               # Open-source Java Development Kit
        meson                               # Open source, fast and friendly build system made in Python
        nim                                 # Nim language
        nimble                              # Package manager for the Nim programming language
        python313                           # Python language
        yara                                # Bytes detector language
    ];
}