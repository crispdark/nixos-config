{ ... }:

{
  time.timeZone = "Europe/Rome";

  i18n.defaultLocale = "it_IT.UTF-8";

  services.xserver.xkb = {
    layout = "us";
    variant = "intl";
  };

  console.keyMap = "us";
}
