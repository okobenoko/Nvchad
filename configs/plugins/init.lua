local overrides = require "custom.configs.overrides"

local plugins = {

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "nvimtools/none-ls.nvim",
        config = function()
          require "custom.configs.none-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  {
    "saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup()
    end,
  },

  {
    "akinsho/bufferline.nvim",
    lazy = false,
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function ()
      require("bufferline").setup()
    end
  },

  { "williamboman/mason.nvim", enabled = false },
  { "NvChad/nvterm", enabled = false }
}

return plugins
