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

    "org/gnome/desktop/wm/preferences" = {
      button-layout = "appmenu:minimize,maximize,close";
    };
  };

  gtk = {
    enable = true;

    iconTheme = {
      name = "Papirus";
      package = pkgs.papirus-icon-theme;
    };

    cursorTheme = {
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
    };
  };
}
