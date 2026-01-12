{ config, pkgs, user, ... }:

{  
  programs.zsh.enable = true;

  users.users.${user} = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager" 
      "input"
      "audio"
      "video"
      "docker"
    ];

    shell = pkgs.zsh;
  };
}
