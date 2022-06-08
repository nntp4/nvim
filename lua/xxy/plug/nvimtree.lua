local mod = {}

-- set BEFORE calling config function
mod.setup = function()

end

function Mappings()
-- default mappings
  local tree_cb = require'nvim-tree.config'.nvim_tree_callback
  local list = {
      { key = {"<CR>", "l", "<2-LeftMouse>"},     cb = tree_cb("edit") },
      { key = "[",                                cb = tree_cb("dir_up") },
      { key = "]",                                cb = tree_cb("cd") },
      { key = "<C-v>",                            cb = tree_cb("vsplit") },
      { key = "<C-x>",                            cb = tree_cb("split") },
      { key = "<C-t>",                            cb = tree_cb("tabnew") },
      { key = "<",                                cb = tree_cb("prev_sibling") },
      { key = ">",                                cb = tree_cb("next_sibling") },
      { key = "P",                                cb = tree_cb("parent_node") },
      { key = "h",                                cb = tree_cb("close_node") },
      { key = "<Tab>",                            cb = tree_cb("preview") },
      { key = "K",                                cb = tree_cb("first_sibling") },
      { key = "J",                                cb = tree_cb("last_sibling") },
      { key = "I",                                cb = tree_cb("toggle_ignored") },
      { key = "H",                                cb = tree_cb("toggle_dotfiles") },
      { key = "R",                                cb = tree_cb("refresh") },
      { key = "n",                                cb = tree_cb("create") },
      { key = "d",                                cb = tree_cb("remove") },
      { key = "D",                                cb = tree_cb("trash") },
      { key = "r",                                cb = tree_cb("rename") },
      { key = "<C-r>",                            cb = tree_cb("full_rename") },
      { key = "x",                                cb = tree_cb("cut") },
      { key = "c",                                cb = tree_cb("copy") },
      { key = "p",                                cb = tree_cb("paste") },
      { key = "y",                                cb = tree_cb("copy_name") },
      { key = "Y",                                cb = tree_cb("copy_path") },
      { key = "gy",                               cb = tree_cb("copy_absolute_path") },
      { key = "[c",                               cb = tree_cb("prev_git_item") },
      { key = "]c",                               cb = tree_cb("next_git_item") },
      { key = "s",                                cb = tree_cb("system_open") },
      { key = "q",                                cb = tree_cb("close") },
      { key = "g?",                               cb = tree_cb("toggle_help") },
  }
  local mappings =  {
    -- custom only false will merge the list with the default mappings
    -- if true, it will only use your list to set the mappings
    custom_only = true,
    -- list of mappings to set on the tree manually
    list = list
  }
  return mappings
end

mod.config = function()

  require'nvim-tree'.setup {
    -- disables netrw completely
    disable_netrw       = true,
    -- hijack netrw window on startup
    hijack_netrw        = true,
    -- open the tree when running this setup function
    open_on_setup       = true,
    -- will not open on setup if the filetype is in this list
    ignore_ft_on_setup  = {},
    -- opens the tree when changing/opening a new tab if the tree wasn't previously opened
    open_on_tab         = true,
    -- hijacks new directory buffers when they are opened.
    update_to_buf_dir   = {
      -- enable the feature
      enable = true,
      -- allow to open the tree if it was previously closed
      auto_open = true,
    },
    -- hijack the cursor in the tree to put it at the start of the filename
    hijack_cursor       = true,
    -- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually)
    update_cwd          = true,
    -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
    update_focused_file = {
      enable      = false,
      update_cwd  = false,
    },
    -- configuration options for the system open command (`s` in the tree by default)
    system_open = {
      -- the command to run this, leaving nil should work in most cases
      cmd  = nil,
      -- the command arguments as a list
      args = {}
    },
    git = {
      enable = true,
      ignore = true,
      timeout = 256,
    },
    view = {
      -- width of the window, can be either a number (columns) or a string in `%`, for left or right side placement
      width = 30,
      -- height of the window, can be either a number (columns) or a string in `%`, for top or bottom side placement
      height = 30,
      -- side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
      side = 'left',
      -- if true the tree will resize itself after opening a file
      auto_resize = true,
      mappings = Mappings(),
      number = false,
      --signcolumn = "yes"
    },
    trash = {
      cmd = "trash",
      require_confirm = true
    }
  }
end

return mod
