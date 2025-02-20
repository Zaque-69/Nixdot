{ config, pkgs, nixpkgs, ... }:

{
  imports = [
    ../../home/programs
    ../../home/services
    ../../home/packages
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
