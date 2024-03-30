{
  lib,
  config,
  pkgs,
  ...
}:
with lib.wyrdgard; {
  config = {
    colorschemes.tokyonight.enable = true;
    globals.mapleader = " ";

    clipboard.providers.wl-copy.enable = true;

    opts = {
      number = true;
      relativenumber = true;
      shiftwidth = 4;
    };

    keymaps = [
      {
        action = "<cmd>Ex<CR>";
        key = "<leader>e";
        options.desc = "Open Explorer";
      }
      {
        mode = "n";
        action = "<cmd>w<CR>";
        key = "<C-s>";
        options.desc = "Save";
      }
      {
        mode = "n";
        action = "<cmd>noh<CR>";
        key = "<esc>";
        options.silent = true;
      }
      {
        mode = "n";
        action = "<cmd>UndotreeToggle<CR>";
        key = "<leader>ut";
        options.desc = "Toggle Undotree";
      }
      {
        mode = "n";
        action = "<cmd>UndotreeToggle<CR>";
        key = "<leader>uf";
        options.desc = "Focus Undotree";
      }
    ];

    plugins = {
      lualine.enable = true;

      nix.enable = true;
      nix-develop.enable = true;


      rainbow-delimiters = {enable = true;};
      nvim-colorizer.enable = true;

      undotree.enable = true;

      which-key = {enable = true;};

      trouble.enable = true;

      markdown-preview.enable = true;

      dashboard = {enable = true;};

      auto-save = {
        enable = true;
        enableAutoSave = true;
      };

      ## lsp
      lsp = {
        enable = true;
        servers = {
          fsautocomplete.enable = true;
          nixd.enable = true;
        };
        keymaps.lspBuf = {
          "<leader>gd" = "definition";
          "<leader>gD" = "references";
          "<leader>gt" = "type_definition";
          "<leader>gi" = "implementation";
          "<leader>K" = "hover";
        };
      };
      rust-tools.enable = true;

      ## none-ls
      none-ls = {
        enable = true;
        sources = {
          diagnostics = {statix.enable = true;};
          formatting = {
            nixfmt.enable = true;
            markdownlint.enable = true;
            shellharden.enable = true;
            shfmt.enable = true;
          };
        };
      };
    };
  };
}
