{ pkgs, ... }: 

{
  services.displayManager.sddm.enable = true;
  programs.sddm.enable = true;
  programs.niri.package = pkgs.niri;
  services.displayManager.sessionPackages = [ pkgs.niri ];
}
