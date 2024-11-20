{ pkgs, ... } :
{
  plugins.telescope = {
    enable = true;
  };
  extraPlugins = [
    {
      plugin = (pkgs.vimUtils.buildVimPlugin {
        name = "search.nvim";
        src = pkgs.fetchFromGitHub {
            owner = "FabianWirth";
            repo = "search.nvim";
            rev = "cfde7b91c713d17e590aad2f0d22a68ddeba3043";
            hash = "sha256-nLDwEkpu+SmcJgnjhtqaXkeeX8YwPp3S2QYKNXaTJCI=";
        };
      });
    }
  ];
  keymaps = [
    {
      key = "<leader>f";
      action = "<cmd>lua require'search'.open()<CR>";
      options.desc = "Search.nvim";
    }
  ];
}