{ pkgs, ... }:

{
  home.packages = with pkgs; [
    prismlauncher
    keepassxc
    vesktop
    telegram-desktop
    brave
    libreoffice
    rclone
  ];
}
