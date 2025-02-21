{ config, lib, pkgs, ... } :
{
  imports =
    [
      ./../../modules/laptop.nix 
      ./hardware-configuration.nix
    ];
}
