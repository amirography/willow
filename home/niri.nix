{
  pkgs,
  lib,
  config,
  ...
}:
with lib; {
  options.niri.enable = mkEnableOption "niri settings";
  config = mkIf config.niri.enable {
    programs.niri = {
    };
    systemd.user.services = {
      swaybg = {
        Unit = {
          PartOf = "graphical-serssion.target";
          After = "graphical-session.target";
          Requisite = "graphical-session.target";
        };
        Service = {
          ExecStart = "${pkgs.swaybg}/bin/swaybg -c \"#232136\"";
          Restart = "on-failure";
        };
      };
    };
  };
}
