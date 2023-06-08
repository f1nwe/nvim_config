return function()
  local cmp = require('cmp')

  cmp.setup({
    sources = {
      { name = "copilot", group_index = 2 },
    },
    mapping = {
      ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      ['<C-k>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
      ['<C-j>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
    },
    experimental = {
      ghost_text = true
    }
  })
end
