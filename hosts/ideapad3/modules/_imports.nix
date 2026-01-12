{ profile, ... } :

{
  imports = [
    ./graphics/profiles/${profile}
    ./bluetooth.nix
    ./bootloader.nix
    ./desktop.nix
    ./networkmanager.nix
    ./sound.nix
    ./trim.nix
    ./zram.nix
  ];
}
