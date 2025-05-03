{ pkgs ? import <nixpkgs> {} } : 

pkgs.mkShell {
  shellHook = ''
    if ! command -v plasmashell &> /dev/null; then
        echo "KDE Plasma is not installed!"
        exit 1
    fi

    loakandfeeltool -a org.kde.breezedark.desktop

    kwriteconfig5 --file ~/.config/kdeglobals --group Icons --key Theme "breeze-dark"
    kwriteconfig5 --file ~/.config/kwinrc --group Plugins --key blurEnabled true
    kwriteconfig5 --file ~/.config/plasmashellrc --group PlasmaViews --key PanelAlignment "Center"

    qdbus org.kde.KWin /KWin reconfigure
    plasmashell --replace & disown
  '';
} 