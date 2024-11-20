{ pkgs, ... } : {

  programs.nix-index.enable = true;

  programs.fish = {
    enable = true;
    shellAbbrs = {
      #others
      "npu" = "nix-prefetch-url";
      "code" = "code --ozone-platform-hint . .";
      "helix" = "/home/z4que/.config/bin/helix/hx";
      "dc" = "cd";
      "clera" = "clear";
      "claer" = "clear";
      "cls" = "clear";
      "CLEAR" = "clear";
      "sl" = "ls";

      #added in "$HOME/.config"
      "passwords" = "sops $HOME/.config/secrets/secrets.yaml";
      "bcrypt" = "$HOME/.config/bin/bcrypt-tool";
      "nvim" = "nix run $HOME/.config/nvim# --";
      "zen" = "HOME/.config/zen/bin/zen";

      #themes
      "theme1" = "cd $HOME/.config/Hyprimage && python theme.pyc backgrounds/annie1.png";
      "theme2" = "cd $HOME/.config/Hyprimage && python theme.pyc backgrounds/annie.png";
      "theme3" = "cd $HOME/.config/Hyprimage && python theme.pyc backgrounds/aot1.png";
      "theme4" = "cd $HOME/.config/Hyprimage && python theme.pyc backgrounds/aot.jpg";
      "theme5" = "cd $HOME/.config/Hyprimage && python theme.pyc backgrounds/eren1.jpg";
      "theme6" = "cd $HOME/.config/Hyprimage && python theme.pyc backgrounds/eren2.jpg";
      "theme7" = "cd $HOME/.config/Hyprimage && python theme.pyc backgrounds/historia.jpg";
      "theme8" = "cd $HOME/.config/Hyprimage && python theme.pyc backgrounds/levi.png";
      "theme9" = "cd $HOME/.config/Hyprimage && python theme.pyc backgrounds/levi1.png";
      "theme10" = "cd $HOME/.config/Hyprimage && python theme.pyc backgrounds/mikasa1.jpeg";
      "theme11" = "cd $HOME/.config/Hyprimage && python theme.pyc backgrounds/mikasa.png";
      "theme12" = "cd $HOME/.config/Hyprimage && python theme.pyc backgrounds/sasha.jpg";
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
