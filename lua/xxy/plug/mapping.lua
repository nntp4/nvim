-----------------------------------------------------------
---- Neovim shortcuts:
-------------------------------------------------------------
local map = vim.api.nvim_set_keymap
local noremap_silent = {noremap = true, silent = true}
local silent = {silent = true}
local cmd = vim.cmd

-------------------------------------------------------------
-- LSP
---------------------------------------------------------------

-- Goto code navigation
map('n', 'gd', '<Plug>(coc-definition)', silent)
map('n', 'gy', '<Plug>(coc-type-definitions)', silent)
map('n', 'gi', '<Plug>(coc-implementation)', silent)
map('n', 'gr', '<Plug>(coc-references)', silent)

-- Renam Symbol
map('n', '<leader>rn', '<Plug>(coc-rename)', silent)

-- format code
map('n', '<leader>bf', '<Plug>(coc-format-selected)', silent)
map('x', '<Cr>bf', '<Plug>(coc-format-selected)', silent)
-------------------------------------------------------------
-- File Tree
-------------------------------------------------------------

--map('n', '<leader>ft', ':NvimTreeToggle<CR>', noremap_silent)
-------------------------------------------------------------
-- outline
-------------------------------------------------------------
map('n', "<leader>ol", ':CocOutline<CR>', noremap_silent)
