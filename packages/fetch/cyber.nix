{ pkgs ? import <nixpkgs> {} }:
let
  cyber = pkgs.fetchgit {
    url = "https://github.com/Zaque-69/Cybersecurity.git";
    hash = "sha256-27g1j1mIO5XTfg/KwH30Kxws3jvYWNbQbQHilLdx+XI=";
  };
in
  pkgs.stdenv.mkDerivation {
    source = cyber;
    name = "cyber";
    phases = "installPhase";
    installPhase = ''
      mkdir -p $out/cyber
      cp -r $source/* $out/cyber 
    ''; 
  }