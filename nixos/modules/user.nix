{ config, pkgs, user, ... }:

{
  users.users.${user}.extraGroups = [
    "wheel"
    "networkmanager" 
    "input"
    "audio"
    "video"
    "libvirtd"
    "docker"
  ];
  
  programs.zsh.enable = true;

  users.users.${user} = {
    shell = pkgs.zsh;
    isNormalUser = true;
  };
}
