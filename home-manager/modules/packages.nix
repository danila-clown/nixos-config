{ pkgs, pkgs-unstable, ... }:

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    neofetch
    firefox
    obsidian
    alacritty
    neovim
    vscode
    telegram-desktop
    jdk17
    python3
  ];
  # ] ++ (with pkgs-unstable; [
  #   arduino-ide
  # ]);
}