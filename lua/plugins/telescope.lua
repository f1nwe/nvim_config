return function()
    local telescope = require("telescope")
    local builtin = require('telescope.builtin')
    local lga_actions = require("telescope-live-grep-args.actions")
    local live_grep_args_shortcuts = require("telescope-live-grep-args.shortcuts")
    local actions = require "telescope.actions"

    telescope.setup{
      defaults = {
        mappings = {
          n = {
            ['|'] = actions.select_vertical,
            ['_'] = actions.select_horizontal
          }
        }
      },
      extensions = {
        live_grep_args = {
          auto_quoting = true, -- enable/disable auto-quoting
          -- define mappings, e.g.
          mappings = { -- extend mappings
          i = {
            ["<C-k>"] = lga_actions.quote_prompt(),
            ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
          },
        },
      }
    }
  }

  telescope.load_extension("live_grep_args")


  vim.keymap.set('n', '<C-p>', builtin.find_files, {})
  vim.keymap.set("n", "<leader>g", telescope.extensions.live_grep_args.live_grep_args)
  vim.keymap.set("n", "<leader>w", live_grep_args_shortcuts.grep_word_under_cursor)
end
