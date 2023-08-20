return {
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   lazy = true,
  --   -- priority = 1000,
  --   config = function()
  --     require("gruvbox").setup({
  --       contrast = "hard",
  --     })
  --   end,
  -- },
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    priority = 1000,
    opts = {
      -- transparent_background = true,
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      style = "storm",
      -- transparent = true,
    },
  },
  {
    "Meigumikato/moonbow.nvim",
    priority = 1000,
    lazy = true,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "moonbow",
      colorscheme = "tokyonight",
      -- colorscheme = "catppuccin",
    },
  },
}
