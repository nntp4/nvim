-- neovim builit-in options, first loading at nvim startup
-----------------------------------------------------------
-- Neovim API aliases
-----------------------------------------------------------
local cmd  = vim.cmd     				-- execute Vim commands
--local exec = vim.api.nvim_exec 	 			-- execute Vimscript
--local fn   = vim.fn       				-- call Vim functions
local g    = vim.g         				-- global variables
local opt  = vim.opt         				-- global/buffer/windows-scoped options

-- disable ruby support
g.loaded_ruby_provider = 0
g.loaded_perl_provider = 0
g.loaded_python_provider = 0

-------------------------------------------------------------
-- General
-- -----------------------------------------------------------
opt.mouse     = 'a'               -- enable mouse support
opt.clipboard = 'unnamedplus'     -- copy/paste to system clipboard
opt.swapfile  = false          -- don't use swapfile
opt.encoding  = "utf-8"	      -- default encoding
opt.hidden    = true             -- TextEdit might fail if hidden is not set.
opt.backup    = false
opt.writebackup =  false
opt.updatetime = 300
-----------------------------------------------------------
---- Neovim UI
-------------------------------------------------------------
opt.number = true             -- show line number
opt.relativenumber = true     -- relative number
opt.signcolumn = "number"     -- s
opt.showmatch = true          -- highlight matching parenthesis
--opt.colorcolumn = '80'        -- line lenght marker at 80 columns
opt.splitright = true         -- vertical split to the right
opt.splitbelow = true         -- orizontal split to the bottom
opt.smartcase = true          -- ignore lowercase for the whole pattern
--opt.linebreak = true          -- wrap on word boundary
opt.cursorline =true
opt.fillchars = 'eob: '       -- hide the tilde (~)
-----------------------------------------------------------
---- Colorscheme
-------------------------------------------------------------
opt.showmode = false
opt.termguicolors = true      -- enable 24-bit RGB colors
cmd [[colorscheme tokyonight]]
-----------------------------------------------------------
---- Tabs, indent
-------------------------------------------------------------
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 2        -- shift 4 spaces when tab
opt.tabstop = 2           -- 1 tab == 4 spaces
opt.smartindent = true    -- autoindent new lines
