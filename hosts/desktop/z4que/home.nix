{ config, pkgs, nixpkgs, sops-nix, ... }:

{
  imports = [
    ../../../home/programs
    ../../../home/services
    ../../../home/packages
    sops-nix.homeManagerModules.sops
  ];

  sops = {
    defaultSopsFile = ./secrets/secrets.yaml;
    defaultSopsFormat = "yaml";
    age.keyFile = "$HOME/.config/sops/age/keys.txt"; 
  };

  nixpkgs.config = {
    allowBroken = true;
    allowUnfree = true;
  };
  
  programs = { 
    home-manager.enable = true;
  };

  home = {
    username = "z4que";
    homeDirectory = "/home/z4que";
    stateVersion = "25.05";
  };

}
