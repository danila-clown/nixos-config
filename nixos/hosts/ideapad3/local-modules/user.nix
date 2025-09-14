{ config, pkgs, user , ... }:

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
}
