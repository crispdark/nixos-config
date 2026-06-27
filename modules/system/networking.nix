{ ... }:

{
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  time.timeZone = "Europe/Rome";
  networking.firewall.enable = false;
}
