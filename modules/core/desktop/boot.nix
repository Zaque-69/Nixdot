{
  boot = {
    loader = {
      systemd-boot = {
        enable = true;
        configurationLimit = null;
      };
      timeout = 5;
    };
    tmp.cleanOnBoot = true;
    readOnlyNixStore = false;
  }; 
}