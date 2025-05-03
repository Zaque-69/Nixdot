{ pkgs, ... } : {

  programs.nix-index.enable = true;

  programs.fish = {
    enable = true;
    shellAbbrs = {
      "aot" = "sudo rm -rf $HOME/Desktop/hyprimage/hyprimage/backgrounds/ &&
        sudo rm -rf $HOME/Desktop/hyprimage/hyprimage/themes/ &&
        sudo mkdir $HOME/Desktop/hyprimage/hyprimage/backgrounds &&
        sudo mkdir $HOME/Desktop/hyprimage/hyprimage/themes &&
        sudo cp $HOME/Desktop/assets/backgrounds/aot/* $HOME/Desktop/hyprimage/hyprimage/backgrounds/ && 
        sudo cp $HOME/Desktop/assets/themes/aot/* $HOME/Desktop/hyprimage/hyprimage/themes";
      "bcrypt" = "$HOME/Desktop/bcrypt/bcrypt-tool";
      "CLEAR" = "clear";
      "claer" = "clear";
      "clera" = "clear";
      "cls" = "clear";
      "code" = "code --ozone-platform-hint . .";
      "dc" = "cd";
      "dust&velvet" = "sudo rm -rf $HOME/Desktop/hyprimage/hyprimage/backgrounds/ &&
        sudo rm -rf $HOME/Desktop/hyprimage/hyprimage/themes/ &&
        sudo mkdir $HOME/Desktop/hyprimage/hyprimage/backgrounds &&
        sudo mkdir $HOME/Desktop/hyprimage/hyprimage/themes &&
        sudo cp $HOME/Desktop/assets/backgrounds/dust&velvet/* $HOME/Desktop/hyprimage/hyprimage/backgrounds/ && 
        sudo cp $HOME/Desktop/assets/themes/dust&velvet/* $HOME/Desktop/hyprimage/hyprimage/themes";
      "helix" = "$HOME/Desktop/helix/bin/hx";
      "hyprimage" = "cd /home/z4que/Desktop/hyprimage/hyprimage && python main.py -t";
      "lines" = "find . -type f -exec wc -l {} + | awk '{s+=$1} END {print s}'";
      "nixgen" = "python $HOME/Desktop/nixgen/nixgen/main.py";
      "npu" = "nix-prefetch-url";
      "nvim" = "nix run $HOME/.config/nvim# --";
      "passwords" = "sops $HOME/.config/secrets/secrets.yaml";
      "scooby" = "python $HOME/Desktop/scooby/scooby/main.py";
      "sl" = "ls";
      "zen" = "$HOME/Desktop/zen/bin/zen-bin";
      
    };
    plugins = [
      {
        name = "z";
        src = pkgs.fetchFromGitHub {
          owner = "jethrokuan";
          repo = "z";
          rev = "ddeb28a7b6a1f0ec6dae40c636e5ca4908ad160a";
          sha256 = "0c5i7sdrsp0q3vbziqzdyqn4fmp235ax4mn4zslrswvn8g3fvdyh";
        };
      }
      {
        name = "tide";
        src = pkgs.fetchFromGitHub {
          owner = "IlanCosman";
          repo = "tide";
          rev = "44c521ab292f0eb659a9e2e1b6f83f5f0595fcbd";
          hash = "sha256-85iU1QzcZmZYGhK30/ZaKwJNLTsx+j3w6St8bFiQWxc=";
        };
      }
    ];
  };
}
