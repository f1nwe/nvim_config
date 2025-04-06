-- plugins/lspconfig.lua

return function()
  local lspconfig = require("lspconfig")

  local on_attach = function(client, bufnr)
    local map = function(lhs, rhs, desc)
      vim.keymap.set("n", lhs, rhs, { buffer = bufnr, noremap = true, desc = desc })
    end

    map("K", vim.lsp.buf.hover, "LSP Hover")
    map("<Leader>rn", vim.lsp.buf.rename, "LSP Rename")
    map("<Leader>ca", vim.lsp.buf.code_action, "LSP Code Action")

    if client.supports_method("textDocument/formatting") then
      map("<Leader>r", function()
        vim.lsp.buf.format({ async = true })
      end, "Format Buffer")
    end
  end

  lspconfig.clangd.setup({
    on_attach = on_attach, -- reuse your function
  })
end
