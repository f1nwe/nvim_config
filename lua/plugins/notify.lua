-- plugins/notify.lua
return function()
  vim.notify = require('notify')
  require('notify').setup {
    stages = 'fade_in_slide_out',
    timeout = 2000,
    background_colour = '#1a1b26'
  }
end
