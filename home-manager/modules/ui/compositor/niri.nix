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
  home.file.".config/niri/config.kdl".source = ./config.kdl;

  # environment
  home.sessionVariables = {
    XDG_CURRENT_DESKTOP = "wlroots";
  };
}