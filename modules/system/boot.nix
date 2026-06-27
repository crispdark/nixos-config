{ config, pkgs, ... }:

{
  # Use the systemd-boot EFI boot loader
  boot.loader.systemd-boot.enable = true;
  boot.loader.edi.canTouchEfiVariables = true;
}
