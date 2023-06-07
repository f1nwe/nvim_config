return function()
  local ts_config = require("nvim-treesitter.configs")

  ts_config.setup {
    ensure_installed = {
      "bash",
      "css",
      "ruby",
      "elixir",
      "graphql",
      "javascript",
      "json",
      "lua",
      "html",
      "yaml",
      "heex",
      "eex"
    },
    highlight = {
      enable = true,
      use_languagetree = true
    },
    indent = {
      enable = false
    }
  }
end
