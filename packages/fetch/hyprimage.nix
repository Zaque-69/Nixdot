{ pkgs ? import <nixpkgs> {} }:
let
  hyprimage = pkgs.fetchgit {
    url = "https://github.com/Zaque-69/Hyprimage.git";
    hash = "sha256-aTE5kxp/mV2aMUQLTKhVIO5T3B5RA2/OXmh/i3fVhtY=";
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
