{ pkgs, go-1_22, ... }:

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
    maven
    go-1_22
  ];
}