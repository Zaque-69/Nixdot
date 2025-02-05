{
    users.users = {
        z4que = {
            isNormalUser = true;
            extraGroups = [ "wheel" ]; 
        };
    };
    security.polkit.enable = true;
}