{ config, lib, pkgs, ... } :
{
  imports =
    [
      ./../../modules/desktop.nix
      ./hardware-configuration.nix
    ];
}
