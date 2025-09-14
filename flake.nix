{
  description = "Clown's configuration";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      user = "clown";
      hostname = "ideapad3";
      stateVersion = "25.05";
      homeStateVersion = "25.05";
    in {

      nixosConfigurations.${hostname} = nixpkgs.lib.nixosSystem {
        inherit system;          
        specialArgs = {
          inherit inputs hostname stateVersion user; 
        };
        modules = [ ./nixos/configuration.nix ];
      };

      homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};
        extraSpecialArgs = {
          inherit inputs user homeStateVersion;
        };
        modules = [ ./home-manager/home.nix ];
      };
 
    };
}