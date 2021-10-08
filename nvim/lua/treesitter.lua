require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "clojure",
    "lua",
    "python",
    "go",
    "json",
    "yaml",
    "bash",
  },

  highlight = {
    enable = true,
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

  textobjects = {
    select = {
      enable = true,
      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner"
      }
    },
    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = {
        [']m'] = '@class.outer',
        [']]'] = '@function.outer'
      },
      goto_previous_start = {
        ['[m'] = '@class.outer',
        ['[['] = '@function.outer'
      },
    }
  }
})
