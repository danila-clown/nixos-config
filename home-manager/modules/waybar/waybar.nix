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
          "custom/openbracket"
          "custom/workspaces"
          "custom/closebracket"
        ];
        modules-center = [
          "clock"
        ];
        modules-right = [
          "custom/openbracket"
          "custom/closebracket"
        ];

        /* === CUSTOM MODULES === */
        "custom/openbracket" = {
          format = "[";
          tooltip = false;
        };
        "custom/closebracket" = {
          format = "]";
          tooltip = false;
        };

        "custom/workspaces" = {
          exec = "${pkgs.writeShellScriptBin "waybar-roman-ws" (builtins.readFile ./utils/workspaces-roman.sh)}";
          return-type = "json";
          interval = "once";
          format = "{icon}";
          tooltip = false;
        };

        /* === BUILT-IN MODULES === */
        "clock" = {
          format = "{:%H:%M}";
          tooltip = false;
        };
      };
    };
  };
}
