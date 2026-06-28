# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other home-manager modules here
  imports = [
    ./modules/home/git.nix
    ./modules/home/kitty.nix
    ./modules/home/zsh.nix
    ./modules/home/fastfetch.nix
    ./modules/home/neovim.nix
  ];

 #  nixpkgs = {
    # You can add overlays here
  #  overlays = [
      # If you want to use overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
  #  ];
    # Configure your nixpkgs instance
  #  config = {
      # Disable if you don't want unfree packages
   #   allowUnfree = true;
  #  };
#  };

  home = {
    username = "crispdark";
    homeDirectory = "/home/crispdark";
  };

  # Add stuff for your user as you see fit:
  # programs.neovim.enable = true;
  # home.packages = with pkgs; [ nerd-fonts.meslo-lg ];
  # Enable home-manager and git
  programs.home-manager.enable = true;
  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "25.11";
}
