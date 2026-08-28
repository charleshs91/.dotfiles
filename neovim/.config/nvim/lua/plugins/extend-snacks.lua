-- https://github.com/folke/snacks.nvim
return {
  "folke/snacks.nvim",
  keys = {
    {
      "<leader>cs",
      function()
        Snacks.picker.lsp_symbols()
      end,
      desc = "LSP Symbols (Snacks)",
    },
  },
  ---@type snacks.Config
  opts = {
    picker = {
      layout = {
        cycle = false,
      },
      hidden = true,
      ignored = false,
      sources = {
        explorer = {
          auto_close = true,
          cycle = true,
          layout = {
            preview = "main",
            width = 0.3,
            min_width = 30,
          },
        },
        files = {
          hidden = true,
          ignored = true,
        },
        lsp_symbols = {
          filter = require("config.symbol-kinds").ts_filetypes(),
        },
        lsp_workspace_symbols = {
          filter = require("config.symbol-kinds").ts_filetypes(),
        },
      },
    },
  },
}
