{ config, pkgs, user, ... }:

{  
  programs.zsh.enable = true;

  users.users.${user} = {
    shell = pkgs.zsh;
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager" 
      "input"
      "audio"
      "video"
      "libvirtd"
      "docker"
    ];
  };
}
