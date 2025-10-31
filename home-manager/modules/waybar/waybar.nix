{ pkgs, ... }:

{
  programs.waybar = {
    enable = true;
    style = ./style.css;

    settings = {
      mainBar = {
        reload_style_on_change = true;
        layer = "top";
        position = "top";
        height = 30;
        spacing = 4;

        /* === WORKSPACES === */
        modules-left = [
          "hyprland/workspaces"
        ];
        modules-center = [
          "clock"
        ];
        modules-right = [
          "custom/power"
        ];


        /* === CUSTOM MODULES === */
        "custom/power" = {
          format = " ⏻ ";
          tooltip = false;
          on-click = wlogout -b 4;
        }


        /* === BUILT-IN MODULES === */
        "hyprland/workspaces" = {
          format = "{icon}";
          disable-scroll = true;
          show-special = true;
          special-visible-only = true;
          all-outputs = true;
          format-icons = {
            "1" = "1";
            "2" = "2";
            "3" = "3";
            "4" = "4";
            "5" = "5";
            "6" = "6";
            "7" = "7";
            "8" = "8";
            "9" = "9";
            "10" = "10";
          };
          persistentWorkspaces = [ "1" "2" "3" "4" "5" "6" "7" "8" "9" "10" ];
        };

        "clock" = {
          format = "{:%H:%M}";
          tooltip = false;
        };
      };
    };
  };
}
