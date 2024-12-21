{ pkgs, ... } : {
    home.packages = with pkgs; [
        nix-init                            #Command line tool to generate Nix packages from URLs
        nix-output-monitor                  #Processes output of Nix commands to show helpful and pretty information
        nix-melt                            #A ranger-like flake.lock viewer   
        nix-prefetch-git                    #Script used to obtain source hashes for fetchgit
        nix-template                        #Make creating nix expressions easy
    ];
}