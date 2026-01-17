{ pkgs, config, ... }: 

{
  services.xserver.enable = true;
  services.xserver.xwayland.enable = true;
  nixpkgs.config.allowUnfree = true;
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  programs.niri.package = pkgs.niri;
  services.displayManager.sessionPackages = [ pkgs.niri ];
}
