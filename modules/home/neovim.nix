{ inputs, ... }:

{
  imports = [ lazyvim.homeManagerMoudles.default ];
  programs.lazyvim {
    enable = true;
  };
}
