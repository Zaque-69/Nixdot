{ pkgs ? import <nixpkgs> {} }:
let
  hyprimage = pkgs.fetchgit {
    url = "https://github.com/Zaque-69/Hyprimage.git";
    hash = "sha256-ifDsCvkMZX79//BdqLZT9eKmvETZpBhESE/B7h15dOI=";
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
