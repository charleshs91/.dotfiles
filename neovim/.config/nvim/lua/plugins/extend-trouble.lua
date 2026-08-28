-- LazyVim binds <leader>cs to `Trouble symbols toggle` (lazyvim/plugins/editor.lua).
-- Freed up for Snacks' lsp_symbols picker; Trouble symbols stays reachable via
-- `:Trouble symbols toggle` and <leader>cS (LSP references/definitions).
return {
  "folke/trouble.nvim",
  keys = {
    { "<leader>cs", false },
  },
}
