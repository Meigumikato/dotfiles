return {
  {
    "nvim-treesitter/nvim-treesitter-context",
    keys = {
      {
        "]c",
        function()
          require("treesitter-context").go_to_context()
        end,
        desc = "got to next context",
        { slient = true },
      },
    },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },
  {
    "barrett-ruth/live-server.nvim",
    config = true,
    cmd = { "LiveServerStart", "LiveServerStop" },
  },
  {
    "NeogitOrg/neogit",
    keys = { { "<leader>gn", "<CMD>Neogit<CR>", desc = "neogit" } },
    opts = {
      integrations = {
        diffview = true,
      },
    },
    cmd = "Neogit",
    dependencies = "nvim-lua/plenary.nvim",
  },
}
