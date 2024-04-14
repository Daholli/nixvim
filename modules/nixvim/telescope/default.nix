{
  lib,
  pkgs,
  ...
}:
with lib.wyrdgard; {
  plugins = {
    telescope = {
      enable = true;
      keymaps = {
        "<leader>fr" = {
          action = "oldfiles";
          options.desc = "[f]ind [r]ecent";
        };

        "<leader>fk" = {
          action = "keymaps";
          options.desc = "[f]ind [k]eys";
        };

        "<leader>fg" = {
          action = "live_grep";
          options.desc = "[f]ind [g]rep";
        };
      };
    };

    which-key.registrations = {
      "<leader>s" = "search";
    };
  };
}
