-- LazyVim core options. `kind_filter` drives every LazyVim symbol picker
-- (fzf-lua `<leader>ss` / `<leader>sS`, trouble symbols, …).
return {
  "LazyVim/LazyVim",
  ---@type LazyVimOptions
  opts = {
    -- deep-merged with LazyVim's defaults, so `default`/`lua`/`markdown` survive
    kind_filter = require("config.symbol-kinds").ts_filetypes(),
  },
}
