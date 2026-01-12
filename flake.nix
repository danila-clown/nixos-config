{
  description = "Clown's configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";

    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { 
    self, 
    nixpkgs, 
    disko, 
    home-manager, 
    ... 
  }@inputs:
    let
      # === SYSTEM PARAMETERS ===
      system = "x86_64-linux";
      hostname = "ideapad3";
      gpuProfile = "nvidia-laptop"; # "nvidia" | "amd" | "vm" | "nvidia-laptop" | "intel"
      user = "clown";
      stateVersion = "25.11";
      homeStateVersion = "25.11";
      # =========================
    in {
      nixosConfigurations.${hostname} = nixpkgs.lib.nixosSystem {
        inherit system;           
        specialArgs = {
          inherit inputs hostname stateVersion user;
          profile = gpuProfile;
        };
        modules = [
          disko.nixosModules.disko
          ./disko.nix
          ./nixos/configuration.nix
          ./hosts/${hostname}/_imports.nix
        ];
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