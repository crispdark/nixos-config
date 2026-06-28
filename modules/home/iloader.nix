{ inputs, pkgs, ... }:

{
  home.packages = [
    pkgs.usbmuxd
    inputs.iloader.packages.${pkgs.system}.iloader
  ];
}
