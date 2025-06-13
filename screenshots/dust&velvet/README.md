## Commands 
```bash
aot
```

Now just type the root password, and use the command : 
```bash
hyprimage 0
```

The Hyprimage app will set the configuration number 0. You can choose from 0 to 17. After that, remember to apply the changes to all the apps, using : 
```bash
home-manager switch --impure --flake .#z4que
```

From the configuration. In this example : 
- We changed the themes with Attack on Titan ones;
- We changed to a specific Desktop, theme, whatever you want to name it;
- We update the apps such Spicetify, to download the specific package for each theme. The last command is important, because when we used "hyprimage" command, we change the config file of Spicetify ( path : "$HOME/.config/spicetify_themes/spicetify.nix" ), and now we need to refresh tha packages. Now repeat the process for the commands : "blackbg" and "dust&velvet"

## Screenshots 

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/100.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/101.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/102.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/103.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/104.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/105.png">
</p>
