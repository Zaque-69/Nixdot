{ pkgs, ... } : {

  programs.nix-index.enable = true;

  programs.fish = {
    enable = true;
    shellAbbrs = {
      "aot" = "cp $HOME/.config/spicetify_themes/themes/spicetify_aot.nix $HOME/.config/spicetify_themes/themes/spicetify.nix && 
        rm $HOME/.config/spicetify_themes/spicetify.nix && 
        mv $HOME/.config/spicetify_themes/themes/spicetify.nix $HOME/.config/spicetify_themes/ && 
        cp $HOME/.config/gtk_themes/themes/gtk_aot.nix $HOME/.config/gtk_themes/themes/gtk.nix && 
        rm $HOME/.config/gtk_themes/gtk.nix && 
        mv $HOME/.config/gtk_themes/themes/gtk.nix $HOME/.config/gtk_themes/ && 
        sudo rm -rf $HOME/Desktop/hyprimage/hyprimage/backgrounds/ &&
        sudo rm -rf $HOME/Desktop/hyprimage/hyprimage/themes/ &&
        sudo mkdir $HOME/Desktop/hyprimage/hyprimage/backgrounds &&
        sudo mkdir $HOME/Desktop/hyprimage/hyprimage/themes &&
        sudo cp $HOME/Desktop/assets/backgrounds/aot/* $HOME/Desktop/hyprimage/hyprimage/backgrounds/ && 
        sudo cp $HOME/Desktop/assets/themes/aot/* $HOME/Desktop/hyprimage/hyprimage/themes && 
        cd /home/z4que/Desktop/hyprimage/hyprimage && python main.py -t 0 &&
        cd /home/z4que/Desktop/dot-unstable && 
        home-manager switch --impure --flake .#z4que";
      "bcrypt" = "$HOME/Desktop/bcrypt/bcrypt-tool";
      "blackbg" = "cp $HOME/.config/spicetify_themes/themes/spicetify_blackbg.nix $HOME/.config/spicetify_themes/themes/spicetify.nix && 
        rm $HOME/.config/spicetify_themes/spicetify.nix && 
        mv $HOME/.config/spicetify_themes/themes/spicetify.nix $HOME/.config/spicetify_themes/ && 
        cp $HOME/.config/gtk_themes/themes/gtk_blackbg.nix $HOME/.config/gtk_themes/themes/gtk.nix && 
        rm $HOME/.config/gtk_themes/gtk.nix && 
        mv $HOME/.config/gtk_themes/themes/gtk.nix $HOME/.config/gtk_themes/ && 
        sudo rm -rf $HOME/Desktop/hyprimage/hyprimage/backgrounds/ &&
        sudo rm -rf $HOME/Desktop/hyprimage/hyprimage/themes/ &&
        sudo mkdir $HOME/Desktop/hyprimage/hyprimage/backgrounds &&
        sudo mkdir $HOME/Desktop/hyprimage/hyprimage/themes &&
        sudo cp $HOME/Desktop/assets/backgrounds/blackbg/* $HOME/Desktop/hyprimage/hyprimage/backgrounds/ && 
        sudo cp $HOME/Desktop/assets/themes/blackbg/* $HOME/Desktop/hyprimage/hyprimage/themes && 
        cd /home/z4que/Desktop/hyprimage/hyprimage && python main.py -t 0 &&
        cd /home/z4que/Desktop/dot-unstable && 
        home-manager switch --impure --flake .#z4que";
      "CLEAR" = "clear";
      "claer" = "clear";
      "clera" = "clear";
      "cls" = "clear";
      "code" = "code --ozone-platform-hint . .";
      "dc" = "cd";
      "dust&velvet" = "cp $HOME/.config/spicetify_themes/themes/spicetify_dust&velvet.nix $HOME/.config/spicetify_themes/themes/spicetify.nix && 
        rm $HOME/.config/spicetify_themes/spicetify.nix && 
        mv $HOME/.config/spicetify_themes/themes/spicetify.nix $HOME/.config/spicetify_themes/ && 
        cp $HOME/.config/gtk_themes/themes/gtk_dust&velvet.nix $HOME/.config/gtk_themes/themes/gtk.nix && 
        rm $HOME/.config/gtk_themes/gtk.nix && 
        mv $HOME/.config/gtk_themes/themes/gtk.nix $HOME/.config/gtk_themes/ && 
        sudo rm -rf $HOME/Desktop/hyprimage/hyprimage/backgrounds/ &&
        sudo rm -rf $HOME/Desktop/hyprimage/hyprimage/themes/ &&
        sudo mkdir $HOME/Desktop/hyprimage/hyprimage/backgrounds &&
        sudo mkdir $HOME/Desktop/hyprimage/hyprimage/themes &&
        sudo cp $HOME/Desktop/assets/backgrounds/dust&velvet/* $HOME/Desktop/hyprimage/hyprimage/backgrounds/ && 
        sudo cp $HOME/Desktop/assets/themes/dust&velvet/* $HOME/Desktop/hyprimage/hyprimage/themes && 
        cd /home/z4que/Desktop/hyprimage/hyprimage && python main.py -t 0 &&
        cd /home/z4que/Desktop/dot-unstable && 
        home-manager switch --impure --flake .#z4que";
      "helix" = "$HOME/Desktop/helix/bin/hx";
      "hyprimage" = "cd /home/z4que/Desktop/hyprimage/hyprimage && python main.py -t";
      "lines" = "find . -type f -exec wc -l {} + | awk '{s+=$1} END {print s}'";
      "nixgen" = "python $HOME/Desktop/nixgen/nixgen/main.py";
      "npu" = "nix-prefetch-url";
      "nvim" = "nix run $HOME/.config/nvim# --";
      "passwords" = "sops $HOME/.config/secrets/secrets.yaml";
      "pdf" = "libreoffice --headless --convert-to pdf";
      "scooby" = "python $HOME/Desktop/scooby/scooby/main.py";
      "sl" = "ls";
      "waybar1" = "pkill waybar
        cp $HOME/.config/waybar_themes/themes/waybar1.nix $HOME/.config/waybar_themes/themes/waybar.nix && 
        rm $HOME/.config/waybar_themes/waybar.nix && 
        mv $HOME/.config/waybar_themes/themes/waybar.nix $HOME/.config/waybar_themes/ && 
        cd /home/z4que/Desktop/dot-unstable && 
        home-manager switch --impure --flake .#z4que &&
        waybar";
      "waybar2" = "pkill waybar
        cp $HOME/.config/waybar_themes/themes/waybar2.nix $HOME/.config/waybar_themes/themes/waybar.nix && 
        rm $HOME/.config/waybar_themes/waybar.nix && 
        mv $HOME/.config/waybar_themes/themes/waybar.nix $HOME/.config/waybar_themes/ && 
        cd /home/z4que/Desktop/dot-unstable && 
        home-manager switch --impure --flake .#z4que && 
        waybar";
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
