{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wget
    firefox
    tree
  ];
}
