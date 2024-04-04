{
  lib,
  pkgs,
  ...
}:
with lib.wyrdgard; {
  plugins = {
    alpha = {
      enable = true;
      theme = "startify";
       
    };
  };
}
