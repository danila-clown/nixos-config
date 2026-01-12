{ config, pkgs, ... } : 

{
  # packages
  home.packages = with pkgs; [
    niri
    xwayland
    xdg-desktop-portal
    xdg-desktop-portal-wlr
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
