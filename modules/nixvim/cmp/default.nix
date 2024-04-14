{
  lib,
  pkgs,
  ...
}:
with lib.wyrdgard; {
  plugins.lazy.plugins = with pkgs.vimPlugins; [
    {
      pkg = nvim-cmp;
      dependencies = [
{
      pkg = cmp-nvim-lsp;
      config = true;
    }{
      pkg = cmp-buffer;
      opts = {};
    }
    {
      pkg = cmp-emoji;
      opts = {};
    }
    {
      pkg = cmp-path;
      opts = {};
    }
    {
      pkg = cmp-cmdline;
      opts = {};
    }
    {
      pkg = cmp-nvim-lsp-document-symbol;
      opts = {};
    }
    {
      pkg = cmp-nvim-lsp-signature-help;
      opts = {};
    }
    lspkind-nvim
    {
      pkg = luasnip;
      dependencies = [
        cmp_luasnip
      ];
    }
      ];
    }
  ];
}
