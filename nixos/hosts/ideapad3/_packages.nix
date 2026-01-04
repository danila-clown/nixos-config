{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Audio
    pipewire
    pamixer

    # System Utilities
    waybar
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
