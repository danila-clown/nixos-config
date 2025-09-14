{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  services.xserver.enable = true;
  services.seatd.enable = true;

  hardware.opengl.enable = true;

  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia.open = false;

  programs.hyprland.enable = true;  
}
