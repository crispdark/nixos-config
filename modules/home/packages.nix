{ pkgs, ... }:

{
  home.packages = with pkgs; [
    prismlauncher
    keepassxc
    telegram-desktop
    brave
    libreoffice
    rclone
  ];
}
