{ pkgs, user, ... }:

{
  programs.zsh.enable = true;

  users.users.${user} = {
    shell = pkgs.zsh;
    isNormalUser = true;
  };
}
