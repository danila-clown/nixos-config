{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    settings = {
      env = [
        "NIXOS_OZONE_WL,1"
        "WRL_NO_HARDWARE_CURSORS,1"
        "QT_QPA_PLATFORM,wayland"
        "GDK_BACKEND,wayland,x11"
        "SDL_VIDEODRIVER,wayland"
        "XDG_SESSION_TYPE,wayland"
      ];

      misc = {
        disable_splash_rendering = true; 
        disable_hyprland_logo = true;
      };

      animations = {
        enabled = true;
        first_launch_animation = 0;
      };

      cursor.no_hardware_cursors = true;

      "$mainMod" = "SUPER";
      
      monitor = [
        "eDP-1,1920x1080@120,0x0,1"
        "HDMI-A-1,1920x1080@240,1920x0,1"
      ];

      exec-once = [
        "hyprpaper"
        "waybar"
      ];

      input = {
        kb_layout = "us,ru";
        kb_options = "grp:alt_shift_toggle";

        follow_mouse = 1;

        touchpad = {
          natural_scroll = true;
        };

        sensitivity = 0;
      };
    };
  };
}
