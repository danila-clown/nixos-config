{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    settings = {
      "$mainMod" = "SUPER";
      monitor = "eDP-1,1920x1080@120,auto,1";
      bind = [
        "$mainMod, Return, exec, alacritty"
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10" 
      ];

      exec-once = [ "alacritty" ];

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
