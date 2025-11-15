{user, homeStateVersion, ... }:

{
  imports = [
    ./modules/imports.nix
  ];

  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = homeStateVersion;
  };
}

