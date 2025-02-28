<p align = "cenleftter">
  <img width="300" alt="webui" src="assets/readme/logo.png">
</p>

## NixDot 

This repo contains more configurations, for different devices. Is not recommandedd the installation, but you can also remove the **hardware-configuration.nix** files from each and replace with yours and try to download them. 

The desktop configuration (mines) contain a Python script designed for systems configured with Hyprland. It enables users to switch the system's background theme by running commands like "hyprimage 1", "hyprimage 2", ..., "hyprimage 17" in the terminal. The script leverages Nix's declarative capabilities to manage and apply themes efficiently. The script can be run after the instalation.

## Key Features ( main configuration )
- **Simple Commands:** Change themes instantly with commands like `hyprimage 1` to `hyprimage 17`.
- **Python-Powered:** Built using Python for flexibility and ease of customization.
- **Nix Integration:** Seamlessly integrates with Nix-managed configurations for consistent behavior.

## Demonstration 

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/nix.gif">
</p>

## Install the system 
   ```bash
   nixos-generate-config --root /mnt 
   && cd /mnt/etc/nixos 
   && git clone https://Zaque-69/Nixdot.git 
   && mv Nixdot/* . 
   # optional, but recommanded if you changed some hardware
   && rm hosts/{device}/{username}/hardware-configuration.nix 
   && mv hardware-configuration.nix hosts/{device}/{username} 
   && nixos-install --flake .#device
   ```

## Rebuild the system ( If you already have installed a Desktop/Window manager )
   ```bash
   nixos-rebuild switch --flake .#user
   ```

## Download the packages
  ``` bash
  home-manager switch --flake .#user
  ```

After downloading all the stuff using home-manager, run the shell file to move some directories and files from this configuration on your device : 

  ```bash
  nix-shell
  ```
## Updates
- **05.02.2025: NVIDIA drivers added to the desktop configuration + Waybar modification** .
- **21.02.2025: A new device was added : a lenovo Laptop with Ryzen 3, 1T HDD, 4GB RAM, minimalist configuration ( KDE DM )** .


# Images 

### Main desktop configuration

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/1.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/2.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/3.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/4.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/5.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/6.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/7.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/8.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/9.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/10.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/11.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/12.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/13.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/14.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/15.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/16.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/17.png">
</p>

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/18.png">
</p>

### Lenovo configuration

<p align = "center">
  <img width="800" alt="webui" src="assets/readme/19.png">
</p>
