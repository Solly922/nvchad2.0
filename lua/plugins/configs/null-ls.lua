local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require "null-ls"
local none_ls = require "none-ls"
local builtins = null_ls.builtins

local opts = {
  sources = {
    builtins.formatting.stylua,

    builtins.formatting.prettierd.with {
      args = {
        "--single-attribute-per-line",
        "--print-width=80",
        "trailing-comma=es5"
      },
    },
    none_ls.diagnostics.eslint_d,

    builtins.formatting.goimports,
    builtins.formatting.gofumpt
  },

  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds {
        group = augroup,
        buffer = bufnr,
      }
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

return opts
