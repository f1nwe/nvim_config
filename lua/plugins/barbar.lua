-- plugins/barbar.lua
return function()
  vim.g.barbar_auto_setup = false
  require('barbar').setup {}
end
