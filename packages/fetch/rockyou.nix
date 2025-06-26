{ pkgs ? import <nixpkgs> {} }:
let
  nixgen = pkgs.fetchgit {
    url = "https://github.com/dw0rsec/rockyou.txt.git";
    hash = "sha256-gsLdmuAHniZUk714UH76boN/fOOLbpz++Jb75ZSbtv4=";
  };
in
  pkgs.stdenv.mkDerivation {
    source = nixgen;
    name = "nixgen";
    phases = "installPhase";
    installPhase = ''
      mkdir -p $out/rockyou
      cp -r $source/* $out/rockyou 
    ''; 
  }
