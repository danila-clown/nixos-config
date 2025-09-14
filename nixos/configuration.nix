{ pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./hosts/${hostname}/hardware-configuration.nix
    ./hosts/${hostname}/local-packages.nix
    ./hosts/${hostname}/local-modules/bundle.nix

    ./packages.nix
    ./modules/bundle.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  networking.hostName = hostname;
  system.stateVersion = stateVersion;
}
