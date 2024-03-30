{
  lib,
  pkgs,
  ...
}:
with lib.wyrdgard; {
  plugins = {
    treesitter = {
      enable = true;
      nixGrammars = true;
      indent = true;
    };
    treesitter-context.enable = true;
  };
}
