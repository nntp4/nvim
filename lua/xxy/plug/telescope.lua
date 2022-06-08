local mod = {}

local map = vim.api.nvim_set_keymap
local noremap_silent = { noremap = true, silent = true }

-- fuzzy find in current buffer
map('n', '<leader>fb', ':lua require"telescope.builtin".current_buffer_fuzzy_find()<CR>', noremap_silent)
-- Lists files in your current working directory, respects .gitignore
map('n', '<leader>ff', ':lua require"telescope.builtin".find_files()<CR>', noremap_silent)
-- Search for a string in your current working directory and get results live as you type (respecting .gitignore)
map('n', '<leader>fg', ':lua require"telescope.builtin".live_grep()<CR>', noremap_silent)
-- Searches for the string under your cursor in your current working directory
map('n', '<leader>fw', ':lua require"telescope.builtin".grep_string()<CR>', noremap_silent)

-- list buffers
map('n', '<leader>lb', ':lua require"telescope.builtin".buffers()<CR>', noremap_silent)

-- list builtin plugins
map('n', '<leader>lbi', ':lua require"telescope.builtin".builtin()<CR>', noremap_silent)

-- open file tree in work directory
map('n', '<leader>lf', ':lua require"telescope".extensions.file_browser.file_browser()<CR>', noremap_silent)
-- list projects
map('n', '<leader>lp', ':lua require"telescope".extensions.project.project()<CR>', noremap_silent)

mod.config = function()
  require("telescope").setup {
    extensions = {
      fzf = {
        fuzzy = true,
        override_generic_sorter = true,
        override_file_sorter = true,
        case_mode = "smart_case",
      },
      file_browser = {
        hijack_netrw = true,
        path         = "%:p:h",
        cwd          = "%:p:h",
        cwd_to_path  = true,
        --mappings ={},
      },
    }
  }
  -- enable extensions
  require('telescope').load_extension('fzf')
  require('telescope').load_extension('frecency')
  require('telescope').load_extension('file_browser')
  require 'telescope'.load_extension('project')
end

return mod
