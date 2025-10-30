{ lib, ... }: 

{
  wayland.windowManager.hyprland.settings = {
    bind = [
      # Switching workspaces
      "$mainMod, 1, exec, hyprsome workspace 1"
      "$mainMod, 2, exec, hyprsome workspace 2"
      "$mainMod, 3, exec, hyprsome workspace 3"
      "$mainMod, 4, exec, hyprsome workspace 4"
      "$mainMod, 5, exec, hyprsome workspace 5"
      "$mainMod, 6, exec, hyprsome workspace 6"
      "$mainMod, 7, exec, hyprsome workspace 7"
      "$mainMod, 8, exec, hyprsome workspace 8"
      "$mainMod, 9, exec, hyprsome workspace 9"
      "$mainMod, 0, exec, hyprsome workspace 10"

      # Moving windows to workspaces
      "$mainMod SHIFT, 1, exec, hyprsome move 1"
      "$mainMod SHIFT, 2, exec, hyprsome move 2"
      "$mainMod SHIFT, 3, exec, hyprsome move 3"
      "$mainMod SHIFT, 4, exec, hyprsome move 4"
      "$mainMod SHIFT, 5, exec, hyprsome move 5"
      "$mainMod SHIFT, 6, exec, hyprsome move 6"
      "$mainMod SHIFT, 7, exec, hyprsome move 7"
      "$mainMod SHIFT, 8, exec, hyprsome move 8"
      "$mainMod SHIFT, 9, exec, hyprsome move 9"
      "$mainMod SHIFT, 0, exec, hyprsome move 10"

      # Moving windows
      "$mainMod SHIFT, H, movewindow, l"
      "$mainMod SHIFT, J, movewindow, d"
      "$mainMod SHIFT, K, movewindow, u"
      "$mainMod SHIFT, L, movewindow, r"

      # Moving focus
      "$mainMod, H, exec, hyprctl dispatch movefocus l"
      "$mainMod, J, exec, hyprctl dispatch movefocus d"
      "$mainMod, K, exec, hyprctl dispatch movefocus u"
      "$mainMod, L, exec, hyprctl dispatch movefocus r"


      
      "$mainMod, Q, killactive,"
      "$mainMod, Return, exec, alacritty"
      "$mainMod, F, exec, firefox"
      "$mainMod, V, exec, code"
      "$mainMod, T, exec, telegram-desktop"

      ", Print, exec, grimblast --notify --freeze copysave area"
    ];

    bindel = [
      ",XF86AudioRaiseVolume,  exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
      ",XF86AudioLowerVolume,  exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ",XF86AudioMute,         exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ",XF86AudioMicMute,      exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
      ",XF86MonBrightnessDown, exec, brightnessctl s 10%-"
      ",XF86MonBrightnessUp,  exec, brightnessctl s 10%+"
    ];
  };
}