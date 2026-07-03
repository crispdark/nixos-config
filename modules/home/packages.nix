{ pkgs, ... }:

{
  home.packages = with pkgs; [
    prismlauncher
    keepassxc
    telegram-desktop
    libreoffice
    rclone
  ];
}
