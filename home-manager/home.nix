{user, homeStateVersion, ... }:

{
  imports = [
    ./fonts.nix
    ./home-packages.nix
    ./modules/bundle.nix
  ];

  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = homeStateVersion;
  };
}

