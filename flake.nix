{
  description = "Z4que's NixOS configuration.";
  
  inputs = {

    bcrypt-tool = {
      url = "github:Gigahawk/bcrypt-tool";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    helix = {
      url = "github:helix-editor/helix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";
    
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };

    nixpkgs = {
      url = "nixpkgs/nixos-unstable";
    };

    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen = {
      url = "git+https://github.com/ch4og/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
  };
  
  outputs = { 
    self,
    bcrypt-tool, 
    helix,
    hyprland,
    home-manager, 
    nixpkgs, 
    sops-nix, 
    spicetify-nix, 
    zen,
    ... 
    } @ inputs: 

    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      
    in {
      nixosConfigurations = {

        inherit system;
        z4que = nixpkgs.lib.nixosSystem {
          modules = [ 
            home-manager.nixosModules.home-manager 
            ./hosts/desktop/z4que/configuration.nix 
          ];
        };

        andrlenovo = nixpkgs.lib.nixosSystem {
          modules = [ 
            home-manager.nixosModules.home-manager 
            ./hosts/laptop/andrlenovo/configuration.nix  
          ];
        };
      };
      
      homeConfigurations = {

        z4que = inputs.home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          extraSpecialArgs = { inherit inputs; inherit sops-nix; };
          modules = [
            ./hosts/desktop/z4que/home.nix
            /home/z4que/.config/spicetify_themes/spicetify.nix
          ];
        };

        andrlenovo = inputs.home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          extraSpecialArgs = { inherit inputs; };
          modules = [
            ./hosts/laptop/andrlenovo/home.nix
          ];
        };
      };

      packages.${system} = {
        bcrypt-tool = inputs.bcrypt-tool.packages.${system}.default; 
        helix = inputs.helix.packages.${system}.default;
        zen = inputs.zen.packages.${system}.default;
      };
    };
}