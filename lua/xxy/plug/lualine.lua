local mod = {}

mod.config = function()
    require('lualine').setup{
      options = {
        icons_enabled = true,
        theme = 'tokyonight',
        disabled_filetypes = {},
        always_divide_middle = true,
        globalstatus = true,
      },
      sections = {
        -- left sidebar
        lualine_a = {'mode'},
        lualine_b = {
          'branch',
          'diff',
          {
            'diagnostics',
            sources   = { 'coc' },
            sections  = { 'error', 'warn', 'info', 'hint' },
            symbols   = { error = 'E', warn = 'W', info = 'I', hint = 'H' },
            colored   = true,
          }
        },
        lualine_c = {
          'filename'
        },
        -- right sidebar
        lualine_x = {
          'encoding',
        },
        lualine_y = {
          'filetype',
          {
            'fileformat',
              symbols = {
                mac = '',  -- e711
                unix = '', -- e712
                dos = '',  -- e70f
              }
          }
        },
        lualine_z = {'location'}
      },
      extensions = {'toggleterm', 'quickfix'}
    }
end

return mod
