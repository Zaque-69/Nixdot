{ config, lib, pkgs, ... } :

{
  imports =
    [
      ./../../../modules/laptop/andrlenovo
      ./hardware-configuration.nix
    ];
}
