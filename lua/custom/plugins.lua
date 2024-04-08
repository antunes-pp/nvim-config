local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "elixir-ls",
        "pyright",
        "deno",
        "pylint",
        "autopep8",
        "css-lsp",
        "html-lsp",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function ()
      return require("custom.configs.null-ls")
    end,
  },
  {
    "elixir-tools/elixir-tools.nvim",
    version = "*",
    event = { "BufReadPre", "BufNewFile" },
    config = function ()
      require "custom.configs.elixir-tools"
    end,
    dependencies = {
      "nvim-lua/plenary.nvim"
    }
  }
}
return plugins

