{ pkgs, winapps, go-1_22, ... }:

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    neofetch
    firefox
    obsidian
    alacritty
    vscode
    telegram-desktop

    jdk17
    maven
    go-1_22

    wlogout
    hyprsome
    grimblast
    jq
    nasm
    postman

    nodejs_20
    typescript
    ollama

    winapps.winapps
    winapps.winapps-launcher
    freerdp
    dialog
    iproute2
    libnotify
    netcat
    mako
  ];

  services.ollama = {
    enable = true;
  };
}