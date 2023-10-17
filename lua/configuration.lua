-- Set leader to space
vim.g.mapleader = " "

-- Copy paste between vim and everything else
vim.opt.clipboard = "unnamedplus"

-- autoreload files (when change git branch)
vim.opt.autoread = true

-- show filename in title
vim.opt.title = true

-- minimum indentation from top/bottom of screen to highlighted result on searching
vim.opt.scrolloff = 3

-- show numbers
vim.opt.number = true

-- order when opening new splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- shows vertical bar
vim.wo.colorcolumn = "100"

-- highlight the cursor screen line
-- highlight the cursor screen column
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- undo changes between sessions
vim.opt.undofile = true

-- set undo directory to ~/.config/nvim/undo
vim.opt.undodir = vim.fn.stdpath("config") .. "/undo"

-- replace tabs to spaces
vim.opt.expandtab = true

--  only even number of spaces (3 spaces + tab = 4 spaces, 2 spaces + tab = 4 spaces)
vim.opt.smarttab = true

-- reserve a column for language client/gitgutter notifications even if nothing to show
vim.opt.signcolumn = "yes"

-- when first letter is lowercased then search is case-insensitive, sensitive otherwise
vim.opt.ignorecase = true
vim.opt.smartcase = true

--
vim.opt.modeline = true -- enable modelines which is a
vim.opt.modelines = 5

-- create vertical split
vim.api.nvim_set_keymap("n", "|", ":vsplit<CR>", {noremap = true})
-- create horizontal split
vim.api.nvim_set_keymap("n", "_", ":split<CR>", {noremap = true})

-- command-mode completion
vim.api.wildmenu = true
-- Wildmenu ignores case
vim.api.wildignorecase = true

-- use custom vertical line between splits that is aligned to the left, so it looks nice when splits
-- have different colors (nvim-tree has custom background)
vim.opt.fillchars = "vert:▏"

-- disable mouse
vim.o.mouse = ""

-- remove whitespace on save
vim.cmd('autocmd BufWritePre * %s/\\s\\+$//e')

-- enable relative line numbers
vim.wo.rnu = true
vim.opt.compatible = false

-- increase performance by not redrawing screen on every change
vim.opt.lazyredraw = true

-- set encoding
vim.opt.encoding = "utf-8"

-- disable swapfiles
vim.opt.swapfile = false

-- show cursor position all the time
vim.opt.ruler = true

-- auto indentation
vim.opt.autoindent = true
vim.opt.shiftwidth = 2 -- number of spaces to use for autoindent
vim.opt.softtabstop = 2 -- number of spaces to use when inserting a tab

-- Jump to end of pasted text
vim.api.nvim_set_keymap("v", "y", "y`]", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "p", "p`]", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "p", "p`]", { noremap = true, silent = true })
