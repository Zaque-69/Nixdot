{ pkgs, ... } : {
    home.packages = with pkgs; [
        nix-init                            # Command line tool to generate Nix packages from URLs
        nix-prefetch-git                    # Script used to obtain source hashes for fetchgit
        nix-template                        # Make creating nix expressions easy
    ];
}