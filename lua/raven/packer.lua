-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  -- TreeSitter
  use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

  -- Telescope
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.3",
    requires = { { "nvim-lua/plenary.nvim" } },
  })

  -- Colorscheme
  use({ "catppuccin/nvim", as = "catppuccin" })

  -- Lualine
  use({
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true },
  })

  -- Undotree
  use("mbbill/undotree")

  -- LspZero
  use({
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    requires = {
      --- Uncomment these if you want to manage LSP servers from neovim
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },

      -- LSP Support
      { "neovim/nvim-lspconfig" },
      -- Autocompletion
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "L3MON4D3/LuaSnip" },
      { "saadparwaiz1/cmp_luasnip" },
      -- Snippets
      { "rafamadriz/friendly-snippets" },

      -- Formatting
      { "jose-elias-alvarez/null-ls.nvim" },
    },
  })

  -- Comment
  use({
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  })

  -- Autopairs
  use({
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  })

  -- surround
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  })
end)
