return function()
  require("indent_blankline").setup {
    show_first_indent_level = false,
    char = "┊",
    char_blankline = "",
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
  }
end
