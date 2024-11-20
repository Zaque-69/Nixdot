{ config, lib, pkgs, ... } :
{
  imports =
    [
      ./../../modules
      ./hardware-configuration.nix
    ];
}
