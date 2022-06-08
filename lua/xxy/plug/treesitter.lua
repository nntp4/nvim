local  mod = {}

mod.config = function()
  require'nvim-treesitter.configs'.setup {
    -- one of  'all', 'maintained', or list
    ensure_installed = {
      "bash",
      "c",
      "cmake",
      "cpp",
      "css",
      "fish",
      "go",
      "html",
      "rust",
      "java",
      "javascript",
      "json",
      "lua",
      "norg",
      "make",
      "markdown",
      "python",
      "toml",
      "yaml",
      "scss",
      "vue",
    },
    ignore_install = {},
    highlight = {
      enable = true,
      disable = {},
      additional_vim_regex_highlighting = false,
    },
    incremental_selection = {enable = true},
    textobjects = {enable = true},
    indent = {enable = true}
  }
  -- local opt = vim.opt
  --opt.foldmethod = 'expr'
  --opt.foldexpr = 'nvim_treesitter#foldexpr()'
end

return mod
