return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  branch = "main",
  event = "VeryLazy",

  config = function()
    local select = require("nvim-treesitter-textobjects.select")
    local move = require("nvim-treesitter-textobjects.move")
    local ts_repeat_move = require("nvim-treesitter-textobjects.repeatable_move")

    -- ============================================================
    -- Text object selection
    -- ============================================================

    vim.keymap.set({ "x", "o" }, "af", function()
      select.select_textobject("@function.outer", "textobjects")
    end, { desc = "Select outer part of a function" })

    vim.keymap.set({ "x", "o" }, "if", function()
      select.select_textobject("@function.inner", "textobjects")
    end, { desc = "Select inner part of a function" })

    vim.keymap.set({ "x", "o" }, "ac", function()
      select.select_textobject("@class.outer", "textobjects")
    end, { desc = "Select outer part of a class" })

    vim.keymap.set({ "x", "o" }, "ic", function()
      select.select_textobject("@class.inner", "textobjects")
    end, { desc = "Select inner part of a class" })

    -- ============================================================
    -- Text object movement
    -- ============================================================

    vim.keymap.set({ "n", "x", "o" }, "]f", function()
      move.goto_next_start("@function.outer", "textobjects")
    end, { desc = "Next function start" })

    vim.keymap.set({ "n", "x", "o" }, "[f", function()
      move.goto_previous_start("@function.outer", "textobjects")
    end, { desc = "Previous function start" })

    vim.keymap.set({ "n", "x", "o" }, "]c", function()
      move.goto_next_start("@class.outer", "textobjects")
    end, { desc = "Next class start" })

    vim.keymap.set({ "n", "x", "o" }, "[c", function()
      move.goto_previous_start("@class.outer", "textobjects")
    end, { desc = "Previous class start" })

    vim.keymap.set({ "n", "x", "o" }, "]l", function()
      move.goto_next_start("@loop.outer", "textobjects")
    end, { desc = "Next loop start" })

    vim.keymap.set({ "n", "x", "o" }, "[l", function()
      move.goto_previous_start("@loop.outer", "textobjects")
    end, { desc = "Previous loop start" })

    -- ============================================================
    -- Repeat textobject movement with ; and ,
    -- ============================================================

    vim.keymap.set(
      { "n", "x", "o" },
      ";",
      ts_repeat_move.repeat_last_move
    )

    vim.keymap.set(
      { "n", "x", "o" },
      ",",
      ts_repeat_move.repeat_last_move_opposite
    )

    -- Make builtin f, F, t, T repeatable with ; and ,
    vim.keymap.set({ "n", "x", "o" }, "f", ts_repeat_move.builtin_f_expr, { expr = true })
    vim.keymap.set({ "n", "x", "o" }, "F", ts_repeat_move.builtin_F_expr, { expr = true })
    vim.keymap.set({ "n", "x", "o" }, "t", ts_repeat_move.builtin_t_expr, { expr = true })
    vim.keymap.set({ "n", "x", "o" }, "T", ts_repeat_move.builtin_T_expr, { expr = true })
  end,
}
