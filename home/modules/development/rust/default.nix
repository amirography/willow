{pkgs, ...}: {
  home.home.packages = with pkgs; [
    rustup
  ];
}
