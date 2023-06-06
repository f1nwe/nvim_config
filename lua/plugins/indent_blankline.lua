return function()
  vim.opt.termguicolors = true
  vim.cmd [[highlight IndentBlanklineIndent1 guibg=#1f1f1f gui=nocombine]]
  vim.cmd [[highlight IndentBlanklineIndent2 guibg=#1a1a1a gui=nocombine]]

  require("indent_blankline").setup({
    show_first_indent_level = false,
    char = ' ',--"┊",
    char_blankline = "",
    char_highlight_list = {
      "IndentBlanklineIndent1",
      "IndentBlanklineIndent2",
    },
    space_char_highlight_list = {
      "IndentBlanklineIndent1",
      "IndentBlanklineIndent2",
    },
    show_current_context = true,
    show_current_context_start = true,
    filetype_exclude = {
      -- default
      "lspinfo",
      "packer",
      "checkhealth",
      "help",
      "man",
      "",
      -- custom
      "startify"
    }
  })
end
