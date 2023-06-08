return function()
  local g = vim.g

g.ale_linters = {
  ruby = {'ruby'},
  javascript = {'eslint'}
}

  g.ale_echo_msg_error_str = '☢'
  g.ale_echo_msg_warning_str = '⚠'
  g.ale_sign_error = '☢'
  g.ale_sign_warning = '⚠'
  g.ale_sign_column_always = 1
  -- g.ale_fixers = {
  --   -- define project-specific fixers in lvimrc
  -- }

  vim.cmd('highlight ALEWarning ctermbg=88')
  vim.cmd('highlight ALEError ctermbg=88')

  vim.keymap.set('n', '<Leader>r', ':ALEFix<CR>', { noremap = true })
end
