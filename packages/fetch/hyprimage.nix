{ pkgs ? import <nixpkgs> {} }:
let
  hyprimage = pkgs.fetchgit {
    url = "https://github.com/Zaque-69/Hyprimage.git";
    hash = "sha256-scS2XkeZHzN86i1FN4IG+TlyxqVxklgKtD/RUn7AF+c=";
  };
in
  pkgs.stdenv.mkDerivation {
    source = hyprimage;
    name = "hyprimage";
    phases = "installPhase";
    installPhase = ''
      mkdir -p $out/hyprimage
      cp -r $source/* $out/hyprimage 
    ''; 
  }
