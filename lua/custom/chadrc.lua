---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "aquarium",
  nvdash = {
    load_on_startup = true,
  },
  lsp_semantic_tokens = true,
  statusline = {
    theme = "minimal",
    separator_style = "round",
  },
}

return M
