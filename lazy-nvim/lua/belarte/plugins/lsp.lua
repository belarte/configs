return {
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    config = function()
      local lsp = require("lsp-zero")
      lsp.extend_lspconfig()
      lsp.preset("recommended")

      local cmp = require('cmp')
      local cmp_action = require('lsp-zero').cmp_action()

      cmp.setup({
	sources = {
          {name = 'nvim_lsp'}
        },
	mapping = cmp.mapping.preset.insert({
          -- `Enter` key to confirm completion
	  ['<CR>'] = cmp.mapping.confirm({select = false}),

	  -- Ctrl+Space to trigger completion menu
	  ['<C-Space>'] = cmp.mapping.complete(),

	  ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
	  ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion

	  -- Scroll up and down in the completion documentation
	  ['<C-u>'] = cmp.mapping.scroll_docs(-4),
	  ['<C-d>'] = cmp.mapping.scroll_docs(4),

          ['<Tab>'] = nil,
          ['<S-Tab>'] = nil,
        }),
	snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
      })

      lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = false}

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
      end)

      local lua_opts = lsp.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
      require('lspconfig').tsserver.setup({})

      require('mason').setup({})
      require('mason-lspconfig').setup({
        ensure_installed = {},
        handlers = {
          lsp.default_setup,
        },
      })

      lsp.setup()

      vim.diagnostic.config({
        virtual_text = true
      })
    end,
  },
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},
}
