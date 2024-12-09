{ pkgs ? import <nixpkgs> {} } : 

pkgs.mkShell {
  shellHook = ''
    tide configure --auto --style=Lean --prompt_colors='16 colors' --show_time=No --lean_prompt_height='One line' --prompt_spacing=Compact --icons='Many icons' --transient=Yes   
    
    mv assets/wlogout/icons $HOME/.config/wlogout
    mv secrets $HOME/.config
    mv dotfiles/Hyprimage $HOME/.config
    mv packages/nvim $HOME/.config
    
    rm $HOME/.config/hypr/hyprland.conf && mv dotfiles/Hyprland/hyprland.conf $HOME/.config/hypr
    rm -rf $HOME/.config/eww && mv dotfiles/eww $HOME/.config
    chmod +x $HOME/.config/eww/scripts/apps.sh
  
    mkdir $HOME/.config/bin
    
    nix build .#bcrypt-tool
    sudo mv result/bin/bcrypt-tool $HOME/.config/bin
    rm -rf result

    nix build .#helix
    sudo mv result/bin result/helix
    sudo mv result/helix $HOME/.config/bin
    rm -rf result

    nix build .#zen
    sudo mv result/bin result/zen
    sudo mv result/zen $HOME/.config/bin
  '';
} 