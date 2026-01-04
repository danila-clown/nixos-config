{ config, lib, pkgs, ... }: 

{
  services.xserver.videoDrivers = [ "amdgpu" "nvidia" ];
  hardware.opengl.enable = true;

  # nvidia
  hardware.nvidia = {
    modesetting.enable = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    nvidiaSettings = true;
  };
  
  boot.kernelParams = [ "nvidia-drm.modeset=1" ];
  
  nixpkgs.overlays = [ inputs.niri-flake.overlays.niri ];
  programs.niri.enable = true;
  services.xserver.enable = false;
}