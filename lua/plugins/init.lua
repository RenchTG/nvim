return {
  -- conform.nvim
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- nvim-lspconfig
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- nvim-treesitter
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
        "html", "css", "java"
  		},
  	},
  },

  -- copilot
  {
    "github/copilot.vim",
    lazy = false,
    config = function()
        vim.g.copilot_no_tab_map = true;
        vim.g.copilot_assume_mapped = true;
        vim.g.copilot_tab_fallback = "";
    end
  },
}
