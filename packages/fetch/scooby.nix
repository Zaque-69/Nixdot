{ pkgs ? import <nixpkgs> {} }:
let
  scooby = pkgs.fetchgit {
    url = "https://github.com/Zaque-69/Scooby.git";
    hash = "sha256-Rc4IcJJgv0t+ksD7e2ifQNer4wqfeA5yBHRmTmtoOt0=";
  };
in
  pkgs.stdenv.mkDerivation {
    source = scooby;
    name = "scooby";
    phases = "installPhase";
    installPhase = ''
      mkdir -p $out/scooby
      cp -r $source/* $out/scooby 
    ''; 
  }
