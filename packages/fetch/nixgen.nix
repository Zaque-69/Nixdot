{ pkgs ? import <nixpkgs> {} }:
let
  nixgen = pkgs.fetchgit {
    url = "https://github.com/Zaque-69/Nixgen.git";
    hash = "sha256-XLWFX0tkJgDajwVaMCHf7e2gGCYJFneYqrZKKXj/uDo=";
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
