{ ... }:

{
  networking.hostName = "nixos";
  networking.networkManager.enable = true;
  time.timeZone = "Europe/Rome";
  networking.firewall.enable = false;
}
