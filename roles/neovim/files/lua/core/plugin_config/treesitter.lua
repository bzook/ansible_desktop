require('nvim-treesitter.configs').setup({
  -- A list of parser names, or "all"
  ensure_installed = { "lua", "php", "markdown", "markdown_inline" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true, -- This is a MUST
    additional_vim_regex_highlighting = { "php" },
  },
  indent = {
    enable = false, -- Really breaks stuff if true
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
})

-- Enable folds (zc and zo) on functions and classes but not by default
vim.cmd([[
  set nofoldenable
  set foldmethod=expr
  set foldexpr=nvim_treesitter#foldexpr()
]])
