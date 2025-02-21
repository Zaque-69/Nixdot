{ config, pkgs, nixpkgs, ... }:

{
  imports = [
    ../../home/programs/firefox.nix
    ../../home/programs/zathura.nix 
    ../../home/services
  ];
  
  programs = { 
    home-manager.enable = true;
  };

  home = {
    username = "andrlenovo";
    homeDirectory = "/home/andrlenovo";
    stateVersion = "25.05";
  };
}
