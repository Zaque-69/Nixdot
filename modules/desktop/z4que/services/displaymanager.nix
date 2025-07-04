{ pkgs, ... }:

{
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.cage}/bin/cage -s -- ${pkgs.greetd.gtkgreet}/bin/gtkgreet --background ${pkgs.fetchurl {
          url = "https://i.ibb.co/TDS1v8nd/gray.png";
          sha256 = "13hi4jwp5ga06dpdw5l03b4znwn58fdjlkqjkg824isqsxzv6k15";
        }}";
        user = "greeter"; 
      };
    };
  };

  programs.hyprland.enable = true;
}
