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

        ];


        /* === CUSTOM MODULES === */
        #


        /* === BUILT-IN MODULES === */
        "hyprland/workspaces" = {
          format = "{icon}";
          format-icons = {
            "1" = "I";
            "2" = "II";
            "3" = "III";
            "4" = "IV";
            "5" = "V";
            "6" = "VI";
            "7" = "VII";
            "8" = "VIII";
            "9" = "IX";
            "10" = "X";
          };
          persistentWorkspaces = [ "1" "2" "3" "4" "5" "6" "7" "8" "9" "10" ];
          allOutputs = true;
        };

        "clock" = {
          format = "{:%H:%M}";
          tooltip = false;
        };
      };
    };
  };
}
