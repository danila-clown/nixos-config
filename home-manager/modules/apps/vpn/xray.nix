{ config, pkgs, ... } : 

{   
  home.packages = with pkgs; [
    xray
  ];

  services.xray = {
    enable = true;
    settingsFile = "~/vpn/xray.json";
  }
}