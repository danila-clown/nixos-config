{ pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./hosts/${hostname}/imports.nix

    ./packages.nix
    ./modules/imports.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  networking.hostName = hostname;
  system.stateVersion = stateVersion;
}
