{ pkgs, ... }:

{
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.cage}/bin/cage -s -- ${pkgs.greetd.gtkgreet}/bin/gtkgreet --background ${pkgs.fetchurl {
          url = "https://i.ibb.co/1RQY5QQ/Background.png";
          sha256 = "0cqjkgp30428c1yy8s4418k4qz0ycr6fzcg4rdi41wkh5g1hzjnl";
        }}";
        user = "greeter"; 
      };
    };
  };

  programs.hyprland.enable = true;
}
