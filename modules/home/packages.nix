{ pkgs, ... }:

{
  home.packages = with pkgs; [
    prismlauncher
    keepassxc
    telegram-desktop
    libreoffice
    rclone
    (chromium.override { enableWideVine = true; })
    htop
    element-desktop
    vesktop
    vscode
  ];
}
