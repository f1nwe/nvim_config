-- plugins/lsp_lines.lua
return function()
  require("lsp_lines").setup()
  vim.diagnostic.config({ virtual_lines = true })
end
