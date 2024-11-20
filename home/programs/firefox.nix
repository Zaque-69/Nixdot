{ inputs, ... }:
{
  programs.firefox = {
    enable = true;
    profiles.defualt = {

      search.force = true;
      search.default = "DuckDuckGo";

      bookmarks = [
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
      settings = {
        "dom.security.https_only_mode" = true;
        "browser.download.panel.shown" = true;
      };
      
      extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
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
