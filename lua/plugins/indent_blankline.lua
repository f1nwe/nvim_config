return function()
  local highlight = {
    "Whitespace"
  }

  require("ibl").setup({
    indent = { highlight = highlight, char = "┊" },
    whitespace = {
      highlight = highlight,
      remove_blankline_trail = false,
    }
  })
end

    -- show_first_indent_level = false,
    -- char = "┊",
    -- char_blankline = "",
    -- show_current_context = true,
    -- show_current_context_start = true,
    -- filetype_exclude = {
    --   -- default
    --   "lspinfo",
    --   "packer",
    --   "checkhealth",
    --   "help",
    --   "man",
    --   "",
    --   -- custom
    --   "startify"
    -- }
