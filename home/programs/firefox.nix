{ inputs, ... }:
{
  programs.firefox = {
    enable = true;
    profiles.defualt = {

      search = {
        default = "ddg";
        force = true;
      };

      bookmarks = {
        force = true;
        settings = [
          {
            name = "♉";
            toolbar = true;
            bookmarks = [
              {
                name = "MyNixOS";
                url = "https://mynixos.com/";
              }
              {
                name = "Github";
                url = "https://github.com/Zaque-69";
              }
              {
                name = "NixSearch";
                url = "https://search.nixos.org/packages";
              }
            ];
          }
        ];
      };
      settings = {
        "dom.security.https_only_mode" = true;
        "browser.download.panel.shown" = true;
      };
      
      extensions.packages = with inputs.firefox-addons.packages."x86_64-linux"; [
        firefox-color
        return-youtube-dislikes
        simple-translate
        stylus
        ublock-origin
        youtube-nonstop
      ];
    };

    languagePacks = [ "ro" "en-US"];
  };
}
