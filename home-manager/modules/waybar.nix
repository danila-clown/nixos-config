{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";

        modules-center = [ "clock" ];

        clock = {
          format = "{:%H:%M}";
          tooltip = false;
        };
      };
    };

    style = ''
      * {
        font-family: sans-serif;
        font-size: 12px;
      }
      window#waybar {
        background: #222;
        color: #eee;
      }
      #clock {
        padding: 0 10px;
      }
    '';
  };
}
