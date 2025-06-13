The desktop configuration (mine) contain a Python script designed for systems configured with Hyprland. It enables users to switch the system's background theme by running commands like "hyprimage 1", "hyprimage 2", ..., "hyprimage 17" in the terminal. The script leverages Nix's declarative capabilities to manage and apply themes efficiently. The script can be run after the instalation.

## Hyprimage :
  - A CLI application to automate the change of a theme in Hyprimage
  - Command : "hyprimage {number}", where number is the number of a theme

## About Desktop : 
  - It contains 2 packets of themes, one with Attack on Titan and one with a dark-colored style
  - To change the themes, use commands "aot" or "dust&velvet" to download the themes in Hyprimage
  - Then use the command "hyprimage {number}" to change the theme ( background, wlogout, wofi, kitty )

## Key Features ( main configuration ) : 
- **Simple Commands:** Change themes instantly with commands like `hyprimage 0`.
- **Python-Powered:** Built using Python for flexibility and ease of customization.
- **Nix Integration:** Seamlessly integrates with Nix-managed configurations for consistent behavior.

## Themes :
- **Attack on Titan ( command : "aot" ):** themes from 0 to 17 ( "hyprimage 1, hyprimage 2, ..., hyprimage 17").
- **Dust & velvet ( command : "dust&velvet" )** themes from 0 to 5 ( "hyprimage 1, hyprimage 2, ..., hyprimage 5").
