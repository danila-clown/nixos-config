{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Hyprland Core
    hyprland
    seatd
    xdg-desktop-portal-hyprland
    xwayland

    # Audio
    pipewire
    pamixer

    # System Utilities
    waybar
    rofi-wayland
    swaylock
    swayidle
    wl-clipboard
    grim
    slurp
    brightnessctl
    home-manager
    swww

    # Hardware Support
    bluez
    bluez-tools
    blueman
    ntfs3g
    zram-generator
  ];
}
