{ pkgs, ... }:

{
  programs.wlogout = {
    enable = true;

    buttons = {
      lock = "hyprlock";
      logout = "hyprctl dispatch exit";
      reboot = "systemctl reboot";
      shutdown = "systemctl poweroff";
    };

    layout = {
      layout = "row";
      buttonMargin = 20;
      buttonPadding = 30;
      spacing = 25;
      iconSize = 32;
    };

    style = builtins.readFile ./style.css;
  };
}