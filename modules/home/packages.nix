{ pkgs, ... }:

{
  home.packages = with pkgs; [
    prismlauncher
    keepassxc
    telegram-desktop
    ungoogled-chromium
    libreoffice
    rclone
  ];
}
