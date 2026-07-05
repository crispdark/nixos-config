{ inputs, pkgs, ... }:

{
  home.packages = [ inputs.purefetch.packages.${pkgs.stdenv.hostPlatform.system}.purefetch ];
}
