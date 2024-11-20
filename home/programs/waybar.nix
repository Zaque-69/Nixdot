{
  programs.waybar = {
    enable = true;
    style = ''
      *{
        font-family: Cartograph CF Nerd Font, monospace;
        font-weight: bold;
        font-size: 12px;
        padding : 2px;
        border-radius : 4px;
      }

      #custom-rpm,
      #window,
      #custom-clock,
      #pulseaudio,
      #workspaces,
      #backlight,
      #cpu,
      #memory,
      #disk,
      #custom-bgimage,
      #custom-barTheme,
      #custom-brush
      {
        color : #fff;
        background-color : #2d253a;
        padding : 1.5px 10px;    
        margin: 1.5px ;
        margin-bottom : 5px;
      }

      window#waybar {
        background : none;
        color: #cdd6f4;  
      }
      tooltip {
        background: #1e1e2e;
        border-radius: 10px;
        border-width: 2px;
        border-style: solid;
        border-color: #111111;
      }
      #workspaces {
        background: #1e1e2e;
        border-radius: 10px;
        margin-left: 10px;
        padding-right: 0px;
        padding-left: 5px;
      }

      #window {
        margin-left: 60px;
        margin-right: 60px;
        background : none;
        font-size : 14px;
      }

      #custom-shutdown {
        margin-right : 10px;
        color : #fff4e9;
        font-size : 1.33rem;
        padding : .5rem;
      }

      #pulseaudio.microphone {
        margin-right: 5px;
        color : #111111;
        background-color : rgba(241, 241, 241, 0.5);
      }
      #pulseaudio {
        background-color : rgba(241, 241, 241, 0.4);
        color : #111111;
      }
      #custom-clock {
        color : #111111 ;
        background-color : rgba(241, 241, 241, 0.3);
      }


      #custom-bgimage {   
        padding-left : 1rem;
        background-color : rgba(18, 18, 18, 0.8);
        padding : .5rem;
      }
      #custom-rpm {
        background-color : rgba(18, 18, 18, 0.7) ;
      }
      #memory {
        background-color : rgba(18, 18, 18, 0.6);
      }
      #cpu {
        background-color : rgba(18, 18, 18, 0.5);
      }
      #disk {
        background-color : rgba(18, 18, 18, 0.4);
      }
      #custom-brush{
        padding-left : 1rem;
        background-color : rgba(18, 18, 18, 0.3);
        padding : .5rem;
      }
      #custom-barTheme {
        padding-left : 1rem;
        background-color : rgba(18, 18, 18, 0.2);
        padding : .5rem;
      }
      '';
  };

  home.file."/home/z4que/.config/waybar/config.jsonc".text = ''
  {
    "layer": "top",
    "position": "top",
    "mod": "dock",
    "exclusive": true,
    "passthrough": false,
    "gtk-layer-shell": true,
    "height": 0,

    "modules-left": [
        "custom/shutdown",
        "custom/bgimage",
        "custom/rpm",
        "memory",
        "cpu",
        "disk",
        "custom/brush",
        "custom/barTheme"
    ],

    "modules-center": ["hyprland/window"],

    "modules-right": [
        "custom/clock",                
        "pulseaudio",
        "pulseaudio#microphone"
    ],    
    "cpu": {
        "format": " {}%",
        "interval": 1,
        "exec-if": "exit 0",            
        "signal": 8
    },
    "custom/rpm": {
      "format": "⛒ {}",                  
      "interval" : 1,
      "exec" : "sensors | grep 'fan' | grep -oE '[0-9]+ RPM'",
      "exec-if" : "exit 0",
      "signal" : 8
    },
    "custom/clock": {
        "format": " {}",
        "interval" : 1,
        "exec" : "TZ='Europe/Bucharest' date +'%H:%M'"
    },
    "pulseaudio": {
        "format": "{icon} {volume}%",
        "toolt7;6up": false,
        "format-muted": " Muted",
        "on-click": "pamixer -t",
        "on-scroll-up": "pamixer -i 2",
        "on-scroll-down": "pamixer -d 2",
        "scroll-step": 1,
        "format-icons": {
            "headphone": "",
            "hands-free": "",
            "headset": "",
            "phone": "",
            "portable": "",
            "car": "",
            "default": ["", "", ""]
        }
    },
    "pulseaudio#microphone": {
        "format": "{format_source}",
        "format-source": "🂮  {volume}%",
        "format-source-muted": "🂭  Muted",
        "on-click": "pamixer --default-source -t",
        "on-scroll-up": "pamixer --default-source -i 5",
        "on-scroll-down": "pamixer --default-source -d 5",
        "scroll-step": 1
    },
    "disk": {
        "format": "  {percentage_free}%"
    },
    "memory": {
        "format": "▬▬  {}%",
        "states": {
            "warning": 70,
            "critical": 90
        }
    },
    "custom/bgimage": {
        "format": "ザク", 
    },
    "custom/barTheme" : {
        "format" : "␥",
        "on-click" : "nix-collect-garbage"
    },
    "custom/shutdown" : {
	    "format" : "",
      "on-click" : "wlogout"
    },
    "custom/brush": {
      "format": "󰉔  HEX",                  
      "on-click" : "wl-color-picker"
    }
  }
  '';

}
