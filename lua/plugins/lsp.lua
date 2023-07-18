return {

  -- uncomment and add lsp servers with their config to servers below
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      autoformat = true,
      ---@type lspconfig.options
      servers = {
        -- sourcekit will be automatically installed with mason and loaded with lspconfig
        sourcekit = {},
      },
    },
  },

  -- uncomment and add tools to ensure_installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "prettierd",
        "lua-language-server",
        "sqlls",
      },
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "",
          package_uninstalled = "✗"
        }
      }
    },
  },

  -- language specific extension modules
  { import = "lazyvim.plugins.extras.lang.typescript" },
  { import = "plugins.extras.lang.java" }, { import = "lazyvim.plugins.extras.formatting.prettier" },
  { import = "plugins.extras.lang.rust" },
  { import = "plugins.extras.lang.nodejs" },
  {import = "plugins.extras.lang.sql"},

}
