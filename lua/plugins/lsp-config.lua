return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = {"lua_ls", "gopls", "golangci_lint_ls", "tsserver"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      --[[ local capabilities = require('cmp_nvim_lsp').default_capabilities() ]]

      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({})
      lspconfig.html.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.gopls.setup({})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
