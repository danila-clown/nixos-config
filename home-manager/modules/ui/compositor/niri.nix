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
    XDG_SESSION_TYPE = "wayland";
    ELECTRON_OZONE_PLATFORM_HINT = "wayland";
    QT_QPA_PLATFORM = "wayland";
    GDK_BACKEND = "wayland";
    SDL_VIDEODRIVER = "wayland";
    NIXOS_OZONE_WL = "1";
 };
}
