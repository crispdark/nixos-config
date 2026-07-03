{ pkgs, ... }:

{
  users.users.crispdark = {
    isNormalUser = true;
    home = "/home/crispdark";
    description = "Edoardo Piscitelli";
    extraGroups = [ "wheel" "networkmanager" ];
    shell = pkgs.zsh;
  };
}
