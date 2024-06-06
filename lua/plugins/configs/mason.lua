local options = {
  ensure_installed = {
    -- lua
    "lua-language-server",
    "stylua",

    -- web dev
    "html-lsp",
    "cssls",
    "eslint-lsp",
    "eslint_d",
    "prettier",
    "prettierd",
    "typescript-language-server",
    "tailwindcss-language-server",

    -- golang
    "gofumpt",
    "goimports",
    "gopls",
    "golangci-lint-langserver",
  }, -- not an option from mason.nvim

  PATH = "skip",

  ui = {
    icons = {
      package_pending = " ",
      package_installed = "󰄳 ",
      package_uninstalled = " 󰚌",
    },

    keymaps = {
      toggle_server_expand = "<CR>",
      install_server = "i",
      update_server = "u",
      check_server_version = "c",
      update_all_servers = "U",
      check_outdated_servers = "C",
      uninstall_server = "X",
      cancel_installation = "<C-c>",
    },
  },

  max_concurrent_installers = 10,
}

return options
