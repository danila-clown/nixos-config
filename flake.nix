{
  description = "Clown's configuration";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";

    nixpkgs-24_05.url = "github:NixOS/nixpkgs/4333fa1caa944786110a0342b4cd1057eec74e14";

    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    niri-flake = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = { self, nixpkgs, disko, home-manager, niri-flake, nixpkgs-24_05, ... }@inputs:
    let
      system = "x86_64-linux";
      user = "clown";
      hostname = "ideapad3";
      stateVersion = "25.11";
      homeStateVersion = "25.11";

      pkgs-24_05 = nixpkgs-24_05.legacyPackages.${system};
    in {

      nixosConfigurations.${hostname} = nixpkgs.lib.nixosSystem {
        inherit system;          
        specialArgs = {
          inherit inputs hostname stateVersion user; 
        };
        modules = [
          disko.nixosModules.disko
          ./disko.nix
          ./nixos/configuration.nix
        ];
      };

      homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};
        extraSpecialArgs = {
          inherit inputs user homeStateVersion;
          go-1_22 = pkgs-24_05.go;
        };
        modules = [ ./home-manager/home.nix ];
      };
 
    };
}
