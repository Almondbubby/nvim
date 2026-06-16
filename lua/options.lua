-- Hide statusline
--vim.opt.laststatus = 0  -- Never show statusline

-- Also hide the command bar (optional)
vim.opt.cmdheight = 0  -- Hide command line when not in use

-- Hide ruler (line/column numbers in statusline)
vim.opt.ruler = false

-- Hide mode indicator (-- INSERT -- etc)
vim.opt.showmode = false

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Persistent undo
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"

-- Padding
vim.opt.statuscolumn = "%=%{v:relnum?v:relnum:v:lnum}   "

-- Scroll earlier
vim.opt.scrolloff = 16
