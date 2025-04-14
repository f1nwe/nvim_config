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
    map("gd", function() vim.lsp.buf.definition() end, "LSP Go to Definition")

    if client.server_capabilities.documentFormattingProvider then
      map("<Leader>r", function()
        vim.lsp.buf.format({ async = true })
      end, "Format Buffer")
    end
  end

  lspconfig.clangd.setup({
    on_attach = on_attach, -- reuse your function
  })

  lspconfig.lua_ls.setup({
    on_attach = on_attach,
    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" }, -- suppress warning for vim global
        },
        workspace = {
          checkThirdParty = false,
          library = vim.api.nvim_get_runtime_file("", true),
        },
        telemetry = { enable = false },
      }
    }
  })

  lspconfig.pyright.setup({
    on_attach = on_attach,
  })

  lspconfig.clangd.setup({
    on_attach = on_attach,
    cmd = { "clangd", "--background-index", "--clang-tidy" },
    filetypes = { "c", "cpp" },
    root_dir = lspconfig.util.root_pattern("compile_commands.json", "Makefile", ".git"),
  })
end
