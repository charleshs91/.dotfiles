-- Shared LSP `SymbolKind` allow-lists for symbol pickers.
--
-- Both LazyVim (`kind_filter`, used by fzf-lua `<leader>ss`/`<leader>sS`) and
-- snacks.nvim (`picker.sources.lsp_symbols.filter`) default to a list that omits
-- `Variable`. vtsls/tsserver reports `const X = () => …` and `type X = …` as
-- `Variable`, so every arrow-function component and type alias is hidden in
-- TS/JS buffers. These lists add it back.
local M = {}

M.default = {
  "Class",
  "Constructor",
  "Enum",
  "Field",
  "Function",
  "Interface",
  "Method",
  "Module",
  "Namespace",
  "Package",
  "Property",
  "Struct",
  "Trait",
}

M.typescript = vim.list_extend(vim.deepcopy(M.default), { "Variable" })

--- Per-filetype filter table for the TS/JS family.
---@return table<string, string[]>
function M.ts_filetypes()
  local ret = {}
  for _, ft in ipairs({ "typescript", "typescriptreact", "javascript", "javascriptreact" }) do
    ret[ft] = M.typescript
  end
  return ret
end

return M
