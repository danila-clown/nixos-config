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
          on-click = "${pkgs.writeShellScriptBin "wlogout-wrapper" ''
          hyprctl cursor hide
          wlogout -b 4
          hyprctl cursor show
        ''}/bin/wlogout-wrapper";
        };


        /* === BUILT-IN MODULES === */
        "hyprland/workspaces" = {
          "all-outputs" = false;
          "active-only" = false;
          "on-click" = "activate";
          "disable-scroll" = true;
          "on-scroll-up" = "hyprctl dispatch workspace -1";
          "on-scroll-down" = "hyprctl dispatch workspace +1";
          "persistent-workspaces" = builtins.listToAttrs (map (n: {
            name = toString n;
            value = [ ];
          }) (builtins.genList (x: x + 1) 10));
          "sort-by-number" = true;
        };

        "clock" = {
          format = "{:%H:%M}";
          tooltip = false;
        };
      };
    };
  };
}
