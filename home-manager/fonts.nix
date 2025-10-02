{ pkgs, ... }: 

{
  home.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    fira-code
    jetbrains-mono
    inter
    liberation_ttf
  ];
}