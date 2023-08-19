return {
  -- {
  --   "p00f/clangd_extensions.nvim",
  --   opts = {
  --     extension = {
  --       inlay_hints = {
  --         inline = vim.fn.has("nvim-0.10") == 1,
  --       },
  --     },
  --   },
  -- },
  --
  -- Correctly setup lspconfig for clangd 🚀
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        clangd = function(_, opts)
          local clangd_ext_opts = require("lazyvim.util").opts("clangd_extensions.nvim")
          require("clangd_extensions").setup(vim.tbl_deep_extend("force", clangd_ext_opts or {}, { server = opts }))
          return false
        end,
      },
    },
  },
}
