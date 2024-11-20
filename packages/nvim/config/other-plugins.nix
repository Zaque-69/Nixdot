{ pkgs, ... } : {
  plugins = { 
    lualine.enable = true;
    notify.enable = true;
    wtf.enable = true;
  };
  extraPlugins = [
    {
      plugin = (pkgs.vimUtils.buildVimPlugin {
        name = "search.nvim";
        src = pkgs.fetchFromGitHub {
          owner = "nathanmsmith";
          repo = "nvim-ale-diagnostic";
          rev = "5c81828853ffd138be0ae482e3441c35976529f6";
          hash = "sha256-4C5pxZ18EYgPu4VGvYXsaLXHXhzixV58cmxmeO/ESa8=";
        };
      });
    }
  ];
}