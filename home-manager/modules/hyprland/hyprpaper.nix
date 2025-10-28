{ config, ... }: 

{
  services.hyprpaper = {
    enable = true;

    settings = {
      misc = {
        splash = false;
      };
      
      preload = [
        "${../assets/wall.jpg}"
      ];

      wallpaper = [
        "eDP-1,${../assets/wall.jpg}"
        "HDMI-A-1,${../assets/wall.jpg}"
      ];
    };
  };
}