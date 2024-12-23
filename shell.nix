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

    nix-build packages/fetch/scooby.nix
    sudo cp -r result scooby
    mv scooby $HOME/Desktop

    nix-build packages/fetch/hyprimage.nix
    sudo cp -r result hyprimage
    mv hyprimage $HOME/Desktop
    sudo rm -rf $HOME/Desktop/hyprimage/hyprimage/backgrounds
    sudo rm -rf $HOME/Desktop/hyprimage/hyprimage/themes
    sudo mv assets/backgrounds /home/z4que/Desktop/hyprimage/hyprimage/
    sudo mv assets/themes /home/z4que/Desktop/hyprimage/hyprimage/

    rm -rf result
  '';
} 