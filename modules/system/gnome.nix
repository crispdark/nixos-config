{ config, pkgs, ... }:

{
  services.xserver.enable = true;
  services.desktopManager.gnome.enable = true;
  services.displayManager.gdm.enable = true;

  environment.gnome.excludePackages = with pkgs; [
      gnome-tour
      gnome-user-docs
      epiphany
      yelp
  ];
    
  home.packages = with pkgs; [
      gnomeExtensions.appindicator
      gnomeExtensions.blur-my-shell
      gnomeExtensions.app-hider
      gnomeExtensions.dash-to-dock
      gnomeExtensions.in-picture
      gnomeExtensions.night-theme-switcher
  ];
  
#  dconf.settings = {
#    "org/gnome/shell" = {
#      enabled-extensions = [
#        "appindicatorsupport@rgcjonas@gmail.com"
#        "blur-my-shell@aunetx"
#        "app-hider@lynith.dev"
#        "dash-to-dock@micxgx.gmail.com"
#        "nighthemeswitcher@romainvigier.fr"
#      ];
#    };
#  };
}
