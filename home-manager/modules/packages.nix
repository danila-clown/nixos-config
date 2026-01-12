{ pkgs, ... }:

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
  ];
}