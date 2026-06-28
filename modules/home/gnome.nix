{ pkgs, ... }:

{
  home.packages = with pkgs.gnomeExtensions; [
    appindicator
    blur-my-shell
    dash-to-dock
    night-theme-switcher
  ];

  dconf.settings = {
    "org/gnome/shell" = {
      enabled-extensions = [
        "appindicatorsupport@rgcjonas.gmail.com"
        "blur-my-shell@aunetx"
        "dash-to-dock@micxgx.gmail.com"
        "nightthemeswitcher@romainvigier.fr"
      ];
    };
  };
}
