{ pkgs ? import <nixpkgs> {} }:
let
  awesome_piracy = pkgs.fetchgit {
    url = "https://github.com/Igglybuff/awesome-piracy.git";
    hash = "sha256-1u87Yoeka2LDDxHeiTyPpA3fMPfVDk9wo5vhOtSu/7s=";
  };
in
  pkgs.stdenv.mkDerivation {
    source = awesome_piracy;
    name = "awesome_piracy";
    phases = "installPhase";
    installPhase = ''
      mkdir -p $out/piracy
      cp -r $source/* $out/piracy 
    ''; 
  }