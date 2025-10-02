{
  description = "Clown's configuration";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

    nixpkgs-24_05.url = "github:NixOS/nixpkgs/4333fa1caa944786110a0342b4cd1057eec74e14";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = { self, nixpkgs, nixpkgs-24_05, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      user = "clown";
      hostname = "ideapad3";
      stateVersion = "25.05";
      homeStateVersion = "25.05";

      pkgs-24_05 = nixpkgs-24_05.legacyPackages.${system};
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
          go-1_22 = pkgs-24_05.go;
        };
        modules = [ ./home-manager/home.nix ];
      };
 
    };
}