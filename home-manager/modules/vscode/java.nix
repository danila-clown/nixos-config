{ config, pkgs, ... }:

{ 
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      ms-vscode.vscode-java-pack
    ];
    userSettings = {
      "java.home" = "${pkgs.jdk17}";
      "java.configuration.runtimes" = [
        {
          "name" = "JavaSE-17";
          "path" = "${pkgs.jdk17}";
          "default" = true;
        }
      ];
    };
  };
}
