# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{ inputs, lib, config, pkgs, ... }: 

{
  # You can import other home-manager modules here
  imports = [
    ./modules/home/packages.nix
    ./modules/home/git.nix
    ./modules/home/kitty.nix
    ./modules/home/zsh.nix
    ./modules/home/fastfetch.nix
    ./modules/home/neovim.nix
    ./modules/home/gnome.nix
    ./modules/home/iloader.nix
    ./modules/home/chromium.nix
  ];

  home = {
    username = "crispdark";
    homeDirectory = "/home/crispdark";
  };

  # Enable home-manager 
  programs.home-manager.enable = true;
  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "25.11";
}
