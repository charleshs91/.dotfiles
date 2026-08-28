-- https://github.com/neovim/nvim-lspconfig
return {
  {
    "neovim/nvim-lspconfig",
    ---@type vim.lsp.Config
    opts = {
      servers = {
        tailwindcss = {
          settings = {
            tailwindCSS = {
              classAttributes = {
                "class",
                "className",
                "class:list",
                "ngClass",
              },
              classFunctions = {
                "clsx",
                "cn",
                "cva",
              },
              experimental = {
                classRegex = {
                  -- Matches: cn('...') or cn("...") or cn(`...`)
                  { "cn\\(([^)]*)\\)", "[\"'`]([^\"'`]*)[\"'`]" },
                  -- Matches: clsx('...') or clsx("...") or clsx(`...`)
                  { "clsx\\(([^)]*)\\)", "[\"'`]([^\"'`]*)[\"'`]" },
                  -- Matches multi-line or nested arrays/objects inside cn() or clsx()
                  { "cn\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                  { "clsx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                },
              },
            },
          },
        },
        bashls = {},
        sourcekit = {
          cmd = {
            "xcrun",
            "sourcekit-lsp",
          },
        },
        lua_ls = {
          settings = {
            Lua = {
              workspace = {
                checkThirdParty = true,
              },
            },
          },
        },
      },
    },
  },
}
