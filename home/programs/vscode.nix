{ pkgs, ... } : {
    programs.vscode = {
        enable = true;
        userSettings = {
            "files.autoSave" = "afterDelay";
        };
        extensions = with pkgs; [ 
            vscode-extensions.bbenoist.nix
            vscode-extensions.ritwickdey.liveserver
            vscode-extensions.rust-lang.rust-analyzer
            vscode-extensions.catppuccin.catppuccin-vsc-icons
        ];
    };
}