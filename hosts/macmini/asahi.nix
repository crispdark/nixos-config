{ config, pkgs, ... }:

{
  networking.networkmanager.wifi.backend = "iwd";

  hardware.asahi.peripheralFirmwareDirectory = ./firmware;
}
