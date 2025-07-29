{
  programs.waybar = {
    enable = true;
    style = ''
      * {
        font-family: Cartograph CF Nerd Font, monospace;
        font-weight: bold;
        font-size: 12px;
        padding : 2px;
        border-radius : 4px;
      }

      #custom-nvidia,
      #custom-cputemp,
      #custom-clock,
      #custom-ram,
      #window,
      #pulseaudio,
      #workspaces,
      #backlight,
      #cpu,
      #memory,
      #disk,
      #custom-user,
      #custom-recycle,
      #custom-date,
      #custom-github,
      #custom-youtube,
      #custom-gmail,
      #custom-discord,
      #custom-firefox,
      #custom-reddit

      {
        padding : 1px 12px;    
        margin: 2px ;
        margin-bottom : 1px;
        font-size : .9rem;
      }

      window#waybar {
        background-color : #181624;
        border-radius : 0;
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
        color :rgb(255, 255, 255);
      }

      #pulseaudio {
        color : #e0d5ff;
        background-color :#1A1A22;
        margin-right : -2px;
        border-radius : 4px 0 0 4px;
      }

      #pulseaudio.microphone {
        margin-right: 5px;
        color : #1e1e2e;
        background-color : #e0d5ff;
        border-radius : 0 4px 4px 0;
      }

      #custom-date {
        color : #1e1e2e;
        background-color : #CB94F0;
        border-radius : 0 4px 4px 0;
      }

      #custom-clock {
        margin-right : -2px;
        color : #CB94F0;
        background-color :#1A1A22;
        border-radius : 4px 0 0 4px;
      }

      #custom-github,
      #custom-youtube,
      #custom-gmail,
      #custom-discord,
      #custom-firefox,
      #custom-reddit {
        font-size : 1.5rem;
        padding-left : .5rem;
        padding-right : .5rem;
        color : #fff;
      }
 
      #custom-github {
        padding-right : 1rem;
      }

      #custom-gmail,
      #custom-reddit { 
        padding-right : .4rem;
      }

      #custom-shutdown {
        margin-right : 10px;
        color : #fff4e9;
        font-size : 1.33rem;
        padding : .5rem;
      }

      #custom-cputemp {
        margin-left : -2px;
        color : #fff4e9;
        font-size : .9rem;
        padding : .5rem;
      }

      #custom-user {   
        padding-left : 1rem;
        color : #605599;
        background-color : #1A1A22;
        padding : .5rem;
      }

      #custom-nvidia {
        color : #1A1A22;
        background-color : #8075b9;
      }

      #memory {
        background-color : #1A1A22;
        color : #8075b9;
        border-radius : 4px 0 0 4px;
      }

      #custom-ram {
        margin-left : -2px;
        color : #1A1A22;
        background-color : #8075b9;
        padding : .5rem;
        border-radius : 0 4px 4px 0;
      }

      #cpu {
        background-color : #1A1A22;
        border-radius : 4px 0 0 4px;
        color : #c0b5f9;
      }

      #custom-cputemp {
        background-color : #D3ADF6;
        color : #1A1A22;
        border-radius : 0 4px 4px 0;
      }

      #disk {
        color : #D3ADF6;
        background-color : #1A1A22;
      }

      #custom-recycle {
        padding-left : 1rem;
        padding-left : .5rem;
        padding-right : .5rem;
        font-size : 1.5rem;
        color : #fff;
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
        "custom/user",
        "custom/nvidia",
        "memory",
        "custom/ram",
        "cpu",
        "custom/cputemp",
        "disk",
        "custom/recycle"
    ],

    "modules-center": ["hyprland/window"],

    "modules-right": [
        "custom/firefox",
        "custom/youtube",
        "custom/discord",
        "custom/gmail",
        "custom/reddit",
        "custom/github",
        "custom/clock",
        "custom/date",               
        "pulseaudio",
        "pulseaudio#microphone"
    ],    
    "cpu": {
        "format": "  {}%",
        "interval": 1,
        "exec-if": "exit 0",            
        "signal": 8
    },

    "custom/cputemp": {
        "format": "{}",
        "interval": 1,
        "exec" : "sensors | grep 'Core 0' | awk '{print $3}'",
        "exec-if": "exit 0",            
        "signal": 8
    },

    "custom/date": {
        "format": "  {}",
        "interval": 1,
        "exec" : "date '+%D'",
        "exec-if": "exit 0",            
        "signal": 8
    },

    "custom/nvidia": {
      "format": "[⛒❱❰⛒] {} {}",                  
      "interval" : 1,
      "exec" : "sh -c 'echo \"$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits)% $(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits)°C\"'",
      "exec-if" : "exit 0",
      "signal" : 8
    },

    "custom/clock": {
        "format": " {}",
        "interval" : 1,
        "exec" : "TZ='Europe/Bucharest' date +'%H:%M'"
    },

    "custom/github": {
        "format": "{}",
        "on-click" : "firefox https://github.com/Zaque-69"
    },

    "custom/youtube": {
        "format": " {}",
        "on-click" : "firefox https://youtube.com/"
    },

    "custom/gmail": {
        "format": "󰊫 {}",
        "on-click" : "firefox https://mail.google.com/mail/u/0/?hl=en-GB#inbox"
    },

    "custom/discord": {
        "format": " {}",
        "on-click" : "firefox https://discord.com/app"
    },

    "custom/firefox": {
        "format": " {}",
        "on-click" : "firefox"
    }, 

    "custom/reddit": {
        "format": "󰑍 {}",
        "on-click" : "firefox https://reddit.com"
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
        "format-source": "  {volume}%",
        "format-source-muted": "  Muted",
        "on-click": "pamixer --default-source -t",
        "on-scroll-up": "pamixer --default-source -i 5",
        "on-scroll-down": "pamixer --default-source -d 5",
        "scroll-step": 1
    },

    "disk": {
        "format": "󰋊  {percentage_free}%"
    },

    "memory": {
        "format": "  {}%",
        "states": {
            "warning": 70,
            "critical": 90
        }
    },
    
    "custom/ram": {
      "format": "{} ",
      "interval" : 1,
      "exec": "hwinfo --memory | grep 'Size' | awk '{print $3 $4}'",
      "exec-if" : "exit 0",
      "signal" : 8
    },

    "custom/user": {
      "format": "  {}",
      "exec" : "whoami",
      "exec-if" : "exit 0",
      "signal" : 8
    },

    "custom/recycle" : {
        "format" : "♻",
        "on-click" : "nix-collect-garbage"
    },

    "custom/shutdown" : {
	    "format" : "",
      "on-click" : "wlogout"
    },
  }
  '';

}
