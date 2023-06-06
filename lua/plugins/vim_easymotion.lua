return function()
  vim.g.EasyMotion_smartcase = 1

  vim.api.nvim_set_keymap('n', '/', '<Plug>(easymotion-sn)', {})
  vim.api.nvim_set_keymap('o', '/', '<Plug>(easymotion-tn)', {})
  vim.api.nvim_set_keymap('n', 'n', '<Plug>(easymotion-next)', {})
  vim.api.nvim_set_keymap('n', 'N', '<Plug>(easymotion-prev)', {})
end
