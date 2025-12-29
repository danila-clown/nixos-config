sudo -i
export NIX_CONFIG="experimental-features = nix-command flakes"
cd /nixos-config

nix flake show
nix eval .#nixosConfigurations.ideapad3.config.fileSystems

nix run github:nix-community/disko -- --mode disko ./nixos/disko.nix

lsblk
mount | grep /mnt

nixos-install --flake .#ideapad3

reboot
