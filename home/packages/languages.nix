{ pkgs, ... } : {
    home.packages = with pkgs; [
        cargo                               #Downloads your Rust project's dependencies and builds your project
        cmake                               #CMake is an open-source, cross-platform family of tools designed to build, test and package software
        gcc14                               #C compiler
        libgcc
        jq                                  #JQ language
        meson                               #Open source, fast and friendly build system made in Python
        nasm                                #80x86 and x86-64 assembler designed for portability and modularity
        nim2                                #Nim language
        nimble                              #Package manager for the Nim programming language
        python312                           #Python language
        yara                                #Bytes detector language
    ];
}