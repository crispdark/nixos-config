{ ... }:

{
  programs.git = {
    enable = true;

    settings = {
      safe.directory = "/etc/nixos";
      user.name = "Edoardo Piscitelli";
      user.email = "haxagd@gmail.com";
    };
  };  
}
