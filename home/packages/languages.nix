{ pkgs, ... } : {
    home.packages = with pkgs; [
        cargo                               # Downloads your Rust project's dependencies and builds your project
        cmake                               # CMake is an open-source, cross-platform family of tools designed to build, test and package software
        jdk23                               # Open-source Java Development Kit
        nim                                 # Nim language
        nimble                              # Package manager for the Nim programming language
        python313                           # Python language
        python313Packages.pip               # PyPA recommended tool for installing Python packages
        python313Packages.setuptools        # Utilities to facilitate the installation of Python packages
        yara                                # Bytes detector language
    ];
}