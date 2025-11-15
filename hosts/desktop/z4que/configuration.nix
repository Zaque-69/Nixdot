{ nixpkgs, config, lib, pkgs, ... } :

{
  imports =
    [
      ./../../../modules/desktop/z4que
      ./hardware-configuration.nix
    ];
}
