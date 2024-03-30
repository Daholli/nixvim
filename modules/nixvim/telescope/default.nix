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
        "<leader>sr" = {
          action = "oldfiles";
          desc = "[s]earch [r]ecent";
        };

        "<leader>sk" = {
          action = "keymaps";
          desc = "[s]earch [k]eys";
        };

        "<leader>sg" = {
          action = "live_grep";
          desc = "[s]earch [g]rep";
        };
      };
    };

    which-key.registrations = {
      "<leader>s" = "search";
      "<leader>sr" = "[s]earch [r]ecent files";
      "<leader>sk" = "[s]earch [k]eymaps";
      "<leader>sg" = "[s]earch [g]rep";
    };
  };
}
