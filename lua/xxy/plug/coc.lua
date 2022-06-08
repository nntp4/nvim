local mod = {}

local map = vim.api.nvim_set_keymap
-- local noremap_silent = {noremap = true, silent = true}
local silent = { silent = true }
local cmd = vim.cmd

-------------------------------------------------------------
-- LSP
---------------------------------------------------------------


mod.run = function()
  local extensions = {
    -- llvm clangd lsp for C/C++
    "coc-clangd",
    -- cmake autocompletetion
    "coc-cmake",

    -- rust official lsp
    "coc-rust-analyzer",

    -- go official golsp
    "coc-go",

    -- microsoft official Python type checker and language server.
    "coc-pyright",

    -- microsoft official Javascript & Typescript LSP
    "coc-tsserver",
    -- Lua third party lsp
    "coc-sumneko-lua",
    -- Javascript & Typescript Linter
    "coc-eslint",
    -- formatter
    "coc-prettier",

    -- utils
    "coc-pairs",
    "coc-json",
    "coc-toml",
    "coc-yaml",
    "coc-markdownlint",

    -- Web front end development
    "coc-html",
    "coc-vetur",
  }

  local install_extensions = "CocInstall " .. table.concat(extensions, " ")
  cmd(install_extensions)

end

mod.config = function()
  -- Goto code navigation
  map('n', 'gd', '<Plug>(coc-definition)', silent)
  map('n', 'gy', '<Plug>(coc-type-definitions)', silent)
  map('n', 'gi', '<Plug>(coc-implementation)', silent)
  map('n', 'gr', '<Plug>(coc-references)', silent)

  -- Renam Symbol
  map('n', '<leader>rn', '<Plug>(coc-rename)', silent)

  -- format code
  map('n', '<leader>bf', '<Plug>(coc-format)', silent)
  --map('x', '<Cr>bf', '<Plug>(coc-format-selected)', silent)
end

return mod
