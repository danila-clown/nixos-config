{ pkgs, go-1_22, ... }:

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    neofetch
    firefox
    alacritty
    vscode
    telegram-desktop
    hiddify-app

    jdk17
    maven
    go-1_22

    grimblast
    jq
  ];
}
