{ pkgs ? import <nixpkgs> {} } : 

pkgs.mkShell {
  shellHook = ''
    tide configure --auto --style=Lean --prompt_colors='16 colors' --show_time=No --lean_prompt_height='One line' --prompt_spacing=Compact --icons='Many icons' --transient=Yes   
    
    mv assets/wlogout/icons $HOME/.config/wlogout
    mv secrets $HOME/.config
    
    rm $HOME/.config/hypr/hyprland.conf && mv dotfiles/Hyprland/hyprland.conf $HOME/.config/hypr
    rm -rf $HOME/.config/eww && mv dotfiles/eww/eww.zip $HOME/.config && unzip $HOME/.config/eww.zip && rm $HOME/.config/eww.zip
    chmod +x $HOME/.config/eww/scripts/apps.sh
      
    nix build .#bcrypt-tool
    mkdir $HOME/Desktop/bcrypt
    sudo mv result/bin/bcrypt-tool $HOME/Desktop/bcrypt

    nix build .#helix
    sudo cp -r result helix
    mv helix $HOME/Desktop

    nix build .#zen
    sudo cp -r result zen
    mv zen $HOME/Desktop

    nix-build packages/fetch/nixgen.nix
    sudo cp -r result nixgen
    mv nixgen $HOME/Desktop

    nix-build packages/fetch/rockyou.nix
    sudo cp -r result rockyou
    mv rockyou $HOME/Desktop

    nix-build packages/fetch/scooby.nix
    sudo cp -r result scooby
    mv scooby $HOME/Desktop

    nix-build packages/fetch/hyprimage.nix
    sudo cp -r result hyprimage
    mv hyprimage $HOME/Desktop
    sudo rm -rf $HOME/Desktop/hyprimage/hyprimage/backgrounds
    sudo rm -rf $HOME/Desktop/hyprimage/hyprimage/themes

    mkdir $HOME/Desktop/assets/backgrounds
    sudo mv assets/backgrounds/aot $HOME/Desktop/assets/backgrounds
    sudo mv assets/backgrounds/dust&velvet $HOME/Desktop/assets/backgrounds
    sudo mv assets/backgrounds/blackbg $HOME/Desktop/assets/backgrounds

    mkdir $HOME/Desktop/assets/themes
    sudo mv assets/themes/aot $HOME/Desktop/assets/themes
    sudo mv assets/themes/dust&velvet $HOME/Desktop/themes
    sudo mv assets/themes/blackbg $HOME/Desktop/themes

    mv dotfiles/nix/spicetify_themes $HOME/.config
    mv dotfiles/nix/gtk_themes $HOME/.config
    mv dotfiles/nix/waybar_themes $HOME/.config

    rm -rf result
  '';
} 