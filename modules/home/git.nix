{ ... }:

{
  programs.git = {
    enable = true;

    userName = "Edoardo Piscitelli";
    userEmail = "haxagd@gmail.com";

    extraConfig = {
      safe.directory = "/etc/nixos";
    };
  };  
}
