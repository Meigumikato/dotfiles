return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = {
        "K",
        "<CMD>Lspsaga hover_doc<CR>",
      }

      keys[#keys + 1] = { "gd", "<CMD>Lspsaga goto_definition<CR>" }
      keys[#keys + 1] = { "gr", "<CMD>Lspsaga finder<CR>" }
      keys[#keys + 1] = { "gD", "<CMD>Lspsaga goto_type_definition" }
      keys[#keys + 1] = { "<space>ca", "<CMD>Lspsaga code_action<CR>" }
      keys[#keys + 1] = { "<space>cA", "<CMD>Lspsaga code_action<CR>" }
      keys[#keys + 1] = { "<space>cr", "<CMD>Lspsaga rename<CR>" }
      keys[#keys + 1] = { "<space>cp", "<CMD>Lspsaga peek_definition<CR>" }
      keys[#keys + 1] = { "<space>ci", "<CMD>Lspsaga incoming_calls<CR>" }
      keys[#keys + 1] = { "<space>co", "<CMD>Lspsaga outgoing_calls<CR>" }
      keys[#keys + 1] = { "<space>o", "<CMD>Lspsaga outline<CR>" }
      keys[#keys + 1] = {
        "<space>csl",
        "<CMD>Lspsaga show_line_diagnostics<CR>",
      }
      keys[#keys + 1] = {
        "<space>csw",
        "<CMD>Lspsaga show_workspace_diagnostics<CR>",
      }
      keys[#keys + 1] = {
        "<space>csb",
        "<CMD>Lspsaga show_buf_diagnostics<CR>",
      }
      keys[#keys + 1] = {
        "<space>csc",
        "<CMD>Lspsaga  show_cursor_diagnostics<CR>",
      }
      keys[#keys + 1] = { "gI", "<CMD>Lspsaga finder imp<CR>" }

      keys[#keys + 1] = {
        "]d",
        "<CMD>Lspsaga diagnostic_jump_next<CR>",
      }
      keys[#keys + 1] = {
        "[d",
        "<CMD>Lspsaga diagnostic_jump_prev<CR>",
      }

      keys[#keys + 1] = {
        "]w",
        function()
          require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.WARN })
        end,
        desc = "Lspsaga diagnostic_next_warn",
      }

      keys[#keys + 1] = {
        "[w",
        function()
          require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.WARN })
        end,
        desc = "Lspsaga diagnostic_prev_warn",
      }

      keys[#keys + 1] = {
        "]e",
        function()
          require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
        end,
        desc = "Lspsaga diagnostic_next_error",
      }

      keys[#keys + 1] = {
        "[e",
        function()
          require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
        end,
        desc = "Lspsaga diagnostic_prev_error",
      }
    end,
  },

  {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    opts = {
      lightbulb = {
        enable = false,
      },
      finder = {
        silent = true,
      },
      rename = {
        auto_save = true,
      },
    },

    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },
  {
    "SmiteshP/nvm-navic",
    enabled = false,
  },

  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    event = "LspAttach",
    config = true,
  },
}
