{ config, pkgs, ... }: 

{
  services.xserver.videoDrivers = [ "amdgpu" ];
  boot.blacklistedKernelModules = [ "nvidia" "nvidia_drm" "nvidia_modeset" "nvidia_uvm" ];
  hardware.opengl.enable = true;
}