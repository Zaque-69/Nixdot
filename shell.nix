{ pkgs ? import <nixpkgs> {} } : 

pkgs.mkShell {
  shellHook = ''
    username=$(whoami)
    device=$(hostnamectl chassis)
    nix-shell "hosts/$device/$username/"
  '';
} 