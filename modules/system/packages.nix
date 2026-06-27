{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    wget
    fastfetch
    git
    firefox 
  ];
}
