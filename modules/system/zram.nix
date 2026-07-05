{ config, pkgs, ... }:

{
  zramSwap = {
    enable = true;
    memoryPercent = 30;
    algorithm = "zstd";
  };

  boot.kernel.sysctl = {
    "vm.swappiness" = 100;
    "vm.page-cluster" = 0;
  };
}
