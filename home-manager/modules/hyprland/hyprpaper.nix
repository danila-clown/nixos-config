{ config, pkgs, lib, ... }: 

{
  home.packages = [ pkgs.hyprpaper ];

  home.file."wallpaper.jpg".source = ../assets/wall.jpg;
  home.file."lock.png".source = ../assets/wall.jpg;

  home.file.".config/hypr/hyprpaper.conf".text = ''
    preload = ~/wall.jpg
    wallpaper = ,~/wall.jpg
  '';

  wayland.windowManager.hyprland.settings.exec-once = [ "hyprpaper" ];
}