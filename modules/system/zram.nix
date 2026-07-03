{ config, pkgs, ... }:

{
  zramSwap = {
    enable = true;
    memoryPercent = 30;
    algorithm = "zstd";
  };
}
