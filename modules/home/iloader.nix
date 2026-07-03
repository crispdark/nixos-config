{ inputs, pkgs, ... }:

{
  home.packages = [
    pkgs.usbmuxd
    inputs.iloader.packages.${pkgs.stdenv.hostPlatform.system}.iloader
  ];
}
