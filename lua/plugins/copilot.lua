return function()
  require("copilot").setup({
    suggestion = { enabled = false }, -- disable inline ghost suggestions (use cmp instead)
    panel = { enabled = false },      -- disable Copilot suggestion panel
  })
end
