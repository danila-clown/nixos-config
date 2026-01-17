{ pkgs, ... } :

{
  home.package = with pkgs; {
    yazi
  };

  # home.file.".config/yazi/yazi.toml" = {
  #   source = ./yazi.toml;
  #   force = true;
  # };

  # home.file.".config/yazi/keymap.toml" = {
  #   source = ./keymap.toml;
  #   force = true;
  # };
  
  # home.file.".config/yazi/theme.toml" = {
  #   source = ./theme.toml;
  #   force = true;
  # };
}