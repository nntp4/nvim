local mod = {}

local map = vim.api.nvim_set_keymap
local noremap_silent = {noremap = true, silent = true}

function Mapping()

  -- pick buff tabs.
  map('n', '<leader>1', ':lua require("bufferline").go_to_buffer(1)<CR>', noremap_silent)
  map('n', '<leader>2', ':lua require("bufferline").go_to_buffer(2)<CR>', noremap_silent)
  map('n', '<leader>3', ':lua require("bufferline").go_to_buffer(3)<CR>', noremap_silent)
  map('n', '<leader>4', ':lua require("bufferline").go_to_buffer(4)<CR>', noremap_silent)
  map('n', '<leader>5', ':lua require("bufferline").go_to_buffer(5)<CR>', noremap_silent)
  map('n', '<leader>6', ':lua require("bufferline").go_to_buffer(6)<CR>', noremap_silent)
  map('n', '<leader>7', ':lua require("bufferline").go_to_buffer(7)<CR>', noremap_silent)
  map('n', '<leader>8', ':lua require("bufferline").go_to_buffer(8)<CR>', noremap_silent)
end

mod.config =  function ()
    Mapping()
    require('bufferline').setup {
      options = {
        numbers = "none",
        diagnostics = "coc",
        diagnostics_update_in_insert = true,
        offsets = {{filetype = "NvimTree", text = 'Files' , text_align = "left"}},
        enforce_regular_tabs = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
      }
    }
    -- setup key bindings.
end

return mod
