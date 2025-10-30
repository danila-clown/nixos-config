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
      "$mainMod SHIFT, 1, exec, hyprsome movetoworkspace 1"
      "$mainMod SHIFT, 2, exec, hyprsome movetoworkspace 2"
      "$mainMod SHIFT, 3, exec, hyprsome movetoworkspace 3"
      "$mainMod SHIFT, 4, exec, hyprsome movetoworkspace 4"
      "$mainMod SHIFT, 5, exec, hyprsome movetoworkspace 5"
      "$mainMod SHIFT, 6, exec, hyprsome movetoworkspace 6"
      "$mainMod SHIFT, 7, exec, hyprsome movetoworkspace 7"
      "$mainMod SHIFT, 8, exec, hyprsome movetoworkspace 8"
      "$mainMod SHIFT, 9, exec, hyprsome movetoworkspace 9"
      "$mainMod SHIFT, 0, exec, hyprsome movetoworkspace 10"

      # Moving windows
      "$mainMod, H, movewindow, l"
      "$mainMod, J, movewindow, d"
      "$mainMod, K, movewindow, u"
      "$mainMod, L, movewindow, r"

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