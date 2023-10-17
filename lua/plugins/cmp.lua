return function()
  local cmp = require('cmp')
  local nvim_lsp = require('cmp_nvim_lsp')

  cmp.setup({
    sources = {
      { name = "copilot", group_index = 2 },
      -- { name = 'nvim_lsp', grouup_index = 2 }
    },
    mapping = {
      ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
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
    experimental = {
      ghost_text = true
    }
  })

  nvim_lsp.default_capabilities()
end
