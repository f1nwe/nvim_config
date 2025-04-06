return function()
  local cmp = require('cmp')
  local nvim_lsp = require('cmp_nvim_lsp')

  -- Set LSP capabilities
  local capabilities = nvim_lsp.default_capabilities()

  -- Pass to lspconfig (in your plugins/lsp.lua or wherever)
  require("lspconfig").clangd.setup({
    capabilities = capabilities
  })

  cmp.setup({
    sources = {
      { name = "copilot", group_index = 2 },
      { name = "nvim_lsp", group_index = 2 },
      { name = "luasnip", group_index = 2 },
      { name = "buffer" },
      { name = "path" },
    },
    mapping = {
      ['<CR>'] = cmp.mapping.confirm({ select = false }),
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        else
          fallback()
        end
      end, { "i", "s" }),
    },
    snippet = {
      expand = function(args)
        require("luasnip").lsp_expand(args.body)
      end,
    },
    experimental = {
      ghost_text = true -- if you want no shadow text
    }
  })
end
