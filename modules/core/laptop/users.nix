{
    users.users = {
        andrlenovo = {
            isNormalUser = true;
            extraGroups = [ "wheel" ]; 
        };
    };
    security.polkit.enable = true;
}