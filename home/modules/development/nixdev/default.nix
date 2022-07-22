{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:
with lib; {
  options = {
    nixdev.enable = mkOption {
      type = types.bool;
      default = false;
    };
  };
  config = mkIf config.nixdev.enable {
    home.packages = [
      pkgs.alejandra
      pkgs.niv
      pkgs.nix-prefetch
      pkgs.nix-prefetch-git
      # pkgs.nix-doc
      pkgs.nix-update
      pkgs.nix-linter
      pkgs.nix-template
      pkgs.manix
    ];

    programs.nix-index.enable = true;
  };
}