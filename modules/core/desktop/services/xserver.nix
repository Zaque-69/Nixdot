{ pkgs, ... } : {
    services.xserver = {
        enable = true;
        xkb = {
            options = "grp:win_space_toogle";
            layout = "us";
        };
        xautolock = {
            enable = true;
            time = 15;
            enableNotifier = true;
            notifier = "${ pkgs.libnotify }/bin/notify-send 'Locking in 10 seconds'";
            locker = "${ pkgs.i3lock }/bin/i3lock -i ../../../../assets/nix/nix.png";
        };
    };
} 