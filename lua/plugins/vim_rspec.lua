return function()
  vim.g.rspec_command = 'call Send_to_Tmux("bundle exec rspec {spec}\n")'

  vim.keymap.set('n', '<Leader>t', ':call RunCurrentSpecFile()<CR>', { noremap = true })
  vim.keymap.set('n', '<Leader>s', ':call RunNearestSpec()<CR>', { noremap = true })
  vim.keymap.set('n', '<Leader>l', ':call RunLastSpec()<CR>', { noremap = true })
  vim.keymap.set('n', '<Leader>a', ':call RunAllSpecs()<CR>', { noremap = true })
end
