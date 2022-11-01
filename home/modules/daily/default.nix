{
  pkgs,
  lib,
  config,
  ...
}:
with lib; {
  imports = [
    ./syncthing
    ./communication.nix
    ./exercism.nix
    ./favo.nix
    ./graphical.nix
    ./hoard.nix
    ./task.nix
    ./newsboat.nix
    ./zk.nix
  ];

  options = {
    daily.enable = mkOption {
      type = types.bool;
      default = false;
    };
  };

  config = mkIf config.daily.enable {
    communication.enable = true;
    exercism.enable = true;
    favo.enable = false;
    graphical.enable = true;
    task.enable = false;
    hoard.enable = false;
    zk.enable = false;
    newsboat.enable = false;
    syncthing.enable = true;
    home.packages = with pkgs; [
      # calibre
      mprocs # not a monitoring tool
      zola
    ];
  };
}
