{ pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./hosts/${hostname}/_imports.nix

    ./modules/_imports.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  networking.hostName = hostname;
  system.stateVersion = stateVersion;
}
