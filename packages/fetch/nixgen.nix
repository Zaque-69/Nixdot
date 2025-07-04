{ pkgs ? import <nixpkgs> {} }:
let
  nixgen = pkgs.fetchgit {
    url = "https://github.com/Zaque-69/Nixgen.git";
    hash = "sha256-bCYciYTPpR4DCMWIwGRivB8T4UIdKvIsiTkZ0JuhJ0A=";
  };
in
  pkgs.stdenv.mkDerivation {
    source = nixgen;
    name = "nixgen";
    phases = "installPhase";
    installPhase = ''
      mkdir -p $out/nixgen
      cp -r $source/* $out/nixgen 
    ''; 
  }
