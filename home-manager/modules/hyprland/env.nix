{
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    WRL_NO_HARDWARE_CURSORS = "1";
    QT_QPA_PLATFORM = "wayland";
    GDK_BACKEND = "wayland,x11";
    SDL_VIDEODRIVER = "wayland";
    XDG_SESSION_TYPE = "wayland";
  };
}
