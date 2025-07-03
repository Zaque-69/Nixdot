{
  boot = {
    enableContainers = true;
    hardwareScan = true;
    kernelModules = [ "nvidia" ];
    loader = {
      systemd-boot = {
        enable = true;
        configurationLimit = null;
      };
      timeout = 5;
    };
    tmp.cleanOnBoot = true;
    nixStoreMountOpts = [
      "nodev"
      "nosuid"
    ];
  };
}
