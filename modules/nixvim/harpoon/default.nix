{
  lib,
  pkgs,
  config,
  ...
}:
with lib.wyrdgard; {
  plugins = {
    harpoon = {
      enable = true;
      enableTelescope = true;
      keymaps = {
        addFile = "<leader>a";
        toggleQuickMenu = "<leader>ha";
        navFile = {
          "1" = "<C-1>";
          "2" = "<C-2>";
          "3" = "<C-3>";
          "4" = "<C-4>";
        };
      };
    };
  };
}
