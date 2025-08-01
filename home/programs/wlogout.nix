{
  programs.wlogout = {
    enable = true;
    layout = [
      {
          label = "lock";
          action = "hyprlock";
          text = "Lock";
      }
      {
          label = "hibernate";
          action = "systemctl hibernate";
          text = "Hibernate";
      }
      {
          label = "logout";
          action = "hyprctl dispatch exit";
          text = "Logout";
      }
      {
          label = "shutdown";
          action = "shutdown now";
          text = "Shutdown";
      }
      {
          label = "suspend";
          action = "loginctl suspend";
          text = "Suspend";
      }
      {
          label = "reboot";
          action = "reboot";
          text = "Reboot";
      }
    ];
  };
}
