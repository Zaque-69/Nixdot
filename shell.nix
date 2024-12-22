{ pkgs ? import <nixpkgs> {} } : 

pkgs.mkShell {
  shellHook = ''
    tide configure --auto --style=Lean --prompt_colors='16 colors' --show_time=No --lean_prompt_height='One line' --prompt_spacing=Compact --icons='Many icons' --transient=Yes   
    
    mv assets/wlogout/icons $HOME/.config/wlogout
    mv secrets $HOME/.config

    mv dotfiles/Hyprimage $HOME/.config
    mv packages/nvim $HOME/.config
    
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

    rm -rf result
  '';
} 