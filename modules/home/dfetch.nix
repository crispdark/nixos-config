{ inputs, pkgs, ... }:

{
  home.packages = [ inputs.dfetch.packages.${pkgs.stdenv.hostPlatform.system}.default ];
}
