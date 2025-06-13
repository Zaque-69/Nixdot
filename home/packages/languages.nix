{ pkgs, ... } : {
    home.packages = with pkgs; [
        cargo                               # Downloads your Rust project's dependencies and builds your project
        cmake                               # CMake is an open-source, cross-platform family of tools designed to build, test and package software
        docker                              # Open source project to pack, ship and run any application as a lightweight container
        docker-compose                      # Docker CLI plugin to define and run multi-container applications with Docker
        gcc14                               # C compiler
        libgcc                              # Provides routines for arithmetic operations, exception handling, and other functions that GCC cannot emit inline code for
        jdk23                               # Open-source Java Development Kit
        jq                                  # JQ language
        meson                               # Open source, fast and friendly build system made in Python
        nasm                                # 80x86 and x86-64 assembler designed for portability and modularity
        nim2                                # Nim language
        nimble                              # Package manager for the Nim programming language
        python313                           # Python language
        yara                                # Bytes detector language
    ];
}