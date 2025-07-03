{ config, pkgs, ...} : {
    
    hardware = {
        nvidia = {
            modesetting.enable = true;
            powerManagement = { 
                enable = false;
                finegrained = false;
            };
            open = false;
	        nvidiaSettings = true;
            package = config.boot.kernelPackages.nvidiaPackages.stable;
        };
        graphics.enable = true;
    }; 

    environment.systemPackages = with pkgs; [
        glxinfo
        vulkan-tools
    ];
}