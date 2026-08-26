require("packer").startup(function(use)
  use("wbthomason/packer.nvim")

  -- LSP
  use({
    "neovim/nvim-lspconfig",
    config = function()
      require("config.lsp").setup()
    end,
  })

  -- Completion
  use({
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      require("config.cmp").setup()
    end,
  })

  -- Snippets
  use({
    "L3MON4D3/LuaSnip",
    tag = "v<CurrentMajor>.*",
    run = "make install_jsregexp",
    config = function()
      require("config.luasnip").setup()
    end,
  })

  -- Utilities
  use("windwp/nvim-ts-autotag")
  use("jiangmiao/auto-pairs")
  use("tpope/vim-surround")
  use({
    "numToStr/Comment.nvim",
    config = function()
      require("config.comment").setup()
    end,
  })

  -- Fuzzy Finder
  use({
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    requires = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("config.telescope").setup()
    end,
  })

  -- Formatting and Linting
  use({
    "dense-analysis/ale",
    config = function()
      require("config.ale").setup()
    end,
  })

  -- Highlighting
  use({
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    run = function()
      local ts_update = require("treesitter.install").update({ with_sync = true })
      ts_update()
    end,
    config = function()
      require("config.treesitter").setup()
    end,
  })
  use({
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  })

  -- File Browser
  use({
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("config.neo-tree").setup()
    end,
  })

  -- UI
  use("stevearc/dressing.nvim")

  -- Terminal
  use({
    "akinsho/toggleterm.nvim",
    tag = "v2.*",
    config = function()
      require("config.toggleterm").setup()
    end,
  })

  -- Git
  use({
    "lewis6991/gitsigns.nvim",
    config = function()
      require("config.gitsigns").setup()
    end,
  })

  -- Colour Schemes
  use("kvrohit/mellow.nvim")
  use("Abstract-IDE/Abstract-cs")
  use("aktersnurra/no-clown-fiesta.nvim")
  use("polirritmico/monokai-nightasty.nvim")
  use({
    "rose-pine/neovim",
    as = "rose-pine",
  })
  use({
    "embark-theme/vim",
    as = "embark",
  })
  use({
    "bluz71/vim-moonfly-colors",
    as = "moonfly",
  })
  use({
    "catppuccin/nvim",
    as = "catppuccin",
  })
  use({
    "projekt0n/github-nvim-theme",
    config = function()
      require("github-theme").setup()
    end,
  })
  use({
    "2nthony/vitesse.nvim",
    requires = {
      "tjdevries/colorbuddy.nvim",
    },
  })

  -- Status Line
  use({
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true },
    config = function()
      require("lualine").setup()
    end,
  })

  use("nvim-lua/plenary.nvim")
end)
