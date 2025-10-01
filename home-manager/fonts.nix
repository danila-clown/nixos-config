{ pkgs, ... }: {
  home.fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      fira-code
      jetbrains-mono
      inter
      liberation_ttf
    ];
  };
}