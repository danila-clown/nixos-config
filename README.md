git clone https://github.com/danila-clown/nixos-config

cd /nixos-config

sudo nix --experimental-features 'nix-command flakes' run github:nix-community/disko -- --mode disko ./nixos/disko.nix

sudo nixos-install --flake .#ideapad3

reboot
