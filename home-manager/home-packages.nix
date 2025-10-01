{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    neofetch
    firefox
    alacritty
    vscode
    telegram-desktop

    jdk17
    maven
    go
  ];
}
