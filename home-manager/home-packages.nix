{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    neofetch
    firefox
    alacritty
    vscode
    jdk17
    maven
  ];
}
