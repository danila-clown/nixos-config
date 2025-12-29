{ config, pkgs, ... } : 

{
  # packages
  home.packages = with pkgs; [
    xwayland
    xdg-desktop-portal
    xdg-desktop-portal-wlr
    niri
  ];
 
  # create config
  home.file.".config/niri/config.kdl" = {
    source = ./config.kdl;
    force = true;
  };
  home.file.".config/niri/local.kdl" = {
    source = ./local.kdl;
    force = true;
  };
}
