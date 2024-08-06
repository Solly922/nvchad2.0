local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require "null-ls"
local builtins = null_ls.builtins

-- local opts = {
null_ls.setup {
  sources = {
    builtins.formatting.stylua,

    builtins.formatting.prettierd.with {
      extra_args = {
        "--print-width=80",
        "--single-attribute-per-line",
        "--trailing-comma=es5",
        "--tab-width=2",
      },
    },
    -- {
    --   name = "prettier",
    --   args = {
    --     "--single-attribute-per-line",
    --     "--trailing-comma=es5",
    --     "--print-width=80",
    --   },
    -- },
    require "none-ls.diagnostics.eslint_d",
    require "none-ls.code_actions.eslint_d",
    -- require "none-ls.diagnostics.eslint",

    builtins.formatting.goimports,
    builtins.formatting.gofumpt,
  },

  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { async = false }
        end,
      })
    end
  end,
}

-- return opts
