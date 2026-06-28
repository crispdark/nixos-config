{ pkgs, ... }:

{
  home.packages = [
    usbmuxd
    inputs.iloader.packages.${pkgs.system}.iloader
  ];
}
