{ inputs, hyprland, pkgs, ... } : {

    wayland.windowManager.hyprland = {
      enable = true;
      package = inputs.hyprland.packages.${pkgs.system}.default;
      settings = {

      monitor = "DP-1, 1920x1080@165, 0x0,1";

          "$mainMod" = "SUPER";
          "$terminal" = "kitty";
          "$fileManager" = "thunar";
          "$menu" = "wofi --show drun0";

      exec-once = [
          "waybar"
          "gammastep"
          "hypridle"
          "cd /home/z4que/Desktop/hyprimage/hyprimage && python main.py -t 2"
          "firefox"
      ];

      env = [
          "XCURSOR_SIZE, 24"
          "HYPRCURSOR_SIZE, 24"
      ];

      input = {
        kb_layout = "us,ro";
        kb_options = "grp:alt_shift_toggle";
        follow_mouse = "1";
        sensitivity = "0";

        touchpad = {
            natural_scroll = "no";
            clickfinger_behavior = "1";
        };
      };

      decoration = {
        rounding = "5";
        active_opacity = "1.0";
        inactive_opacity = "1.0";

        blur = {
            enabled = true;
            size = "3";
            passes = "1";
            vibrancy = "0.1696";
        };
      };

      general = { 
        gaps_in = "5";
        gaps_out = "10";
        border_size = "2";
        "col.active_border" = "rgba(111111ee) rgba(555555ee) 60deg";
        "col.inactive_border" = "rgba(BABBBDaa)";
        resize_on_border = false;
        allow_tearing = false;
        layout = "hy3";
      };

      animations = {
        enabled = true;
        bezier = "myBezier, 0.05, 1.1, 0.2, 1";
        animation = [
          "windows, 1, 7, myBezier"
          "windowsOut, 1, 5, default, popin 95%"
          "border, 1, 10, default"
          "borderangle, 1, 8, default"
          "fade, 1, 7, default"
          "workspaces, 1, 6, default"
        ];
      };

      dwindle = {
        pseudotile = true; 
        preserve_split = true; 
      };

      misc = { 
        force_default_wallpaper = "-1"; 
        disable_hyprland_logo = false; 
      };

      gestures = {
        workspace_swipe = false;
      };

      device = {
        name = "epic-mouse-v1";
        sensitivity = "-0.5";
      };

      bind = [
        "$mainMod, Q, exec, kitty sh -c 'fish'"
        "$mainMod, C, killactive,"
        "$mainMod, M, exit,"
        "$mainMod, E, exec, $fileManager"
        "$mainMod, V, togglefloating,"
        "$mainMod, R, exec, wofi --show drun"
        "$mainMod, P, pseudo,"
        "$mainMod, J, togglesplit,"
        "$mainMod, g, hyprexpo:expo, toggle"

        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"

        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 10"

        "$mainMod, S, togglespecialworkspace, magic"
        "$mainMod SHIFT, S, movetoworkspace, special:magic"

        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"
        "$mainMod, Print, exec, grim -g \"\$(slurp)\""
      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];

      bindl = [
        ", XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 2%+"
        ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%-"
        ", XF86AudioMute, exec, pamixer -t"
      ];

      windowrulev2 = "suppressevent maximize, class:.*";

      "plugin:hyprfocus" = {
        enabled = "yes";
        mouse_focus_animation = "flash";

        bezier = [
          "bezIn, 0.1,0.0,0.25,0.1"
          "bezOut, 0.0,0.1,0.1,0.25"
          ];

          flash = {
            flash_opacity = "0.98";

            in_bezier = "bezIn";
            in_speed = "0.1";

            out_bezier = "bezOut";
            out_speed = "0.1";
        };
      };
    };

    plugins = [
      inputs.hyprland-plugins.packages.${pkgs.system}.hyprfocus
      inputs.hyprland-plugins.packages.${pkgs.system}.hyprexpo
      inputs.hyprland-plugins.packages.${pkgs.system}.hyprtrails
      inputs.hyprland-plugins.packages.${pkgs.system}.borders-plus-plus
    ];

    extraConfig = ''
      plugin {
        hyprtrails {
            color = rgba(feffeff0)
          }
      }

      plugin {
        borders-plus-plus {
            col.border_1 = rgb(2f2f2f)
            border_size_1 = 2
            natural_rounding = yes
        }
    }
    '';
  };
}