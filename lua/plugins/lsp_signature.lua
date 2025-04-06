-- plugins/lsp_signature.lua
return function()
  require('lsp_signature').setup {
    hint_enable = true,
    handler_opts = {
      border = 'none'
    }
  }
end
