{
  plugins = { 
    nvim-tree = {
      enable = true;
      openOnSetupFile = true;
      autoReloadOnWrite = true;
    };
  };
  keymaps = [
    {
      key = "<Space>e";
      action = "<CMD>NvimTreeToggle<CR>";
    }
  ];
}