{ pkgs, ... }:

{
  home.packages = with pkgs; [
    prismlauncher
    keepassxc
    telegram-desktop
    firefox
    libreoffice
    rclone
  ];
}
