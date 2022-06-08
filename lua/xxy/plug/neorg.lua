local mod = {}

mod.config = function()
    require('neorg').setup {
        -- Tell Neorg what modules to load
        load = {
            ["core.defaults"] = {}, -- Load all the default modules
            ["core.integrations.telescope"] = {}, -- Enable the telescope module
            ["core.norg.concealer"] = {}, -- Allows for use of icons
            ["core.norg.dirman"] = { -- Manage your directories with Neorg
              config = {
                workspaces = {
                  my_workspace = "~/.neorg"
                }
              }
            }
        },
    }
end

return mod
