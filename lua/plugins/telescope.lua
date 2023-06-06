return function()
  local builtin = require('telescope.builtin')

  vim.keymap.set('n', '<C-p>', builtin.find_files, {})
  vim.keymap.set('n', '<leader>g', builtin.live_grep, {})

  local actions = require "telescope.actions"

  require('telescope').setup{
    defaults = {
      mappings = {
        n = {
          ['|'] = actions.select_vertical,
          ['_'] = actions.select_horizontal
        },
        i = {
          ['|'] = actions.select_vertical,
          ['_'] = actions.select_horizontal
        }
      }
    }
  }
end
