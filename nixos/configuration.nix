{ pkgs, stateVersion, hostname, ... }:

{
  imports = [ ./modules/_imports.nix ];
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  networking.hostName = hostname;
  system.stateVersion = stateVersion;
}
