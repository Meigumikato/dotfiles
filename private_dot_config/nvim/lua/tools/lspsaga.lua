return {

  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- keys[#keys + 1] = { "K", false }
      --     if client.name ~= "taplo" or client.name ~= "rust_analyzer" then
      --       vim.keymap.set("n", "K", "<CMD>Lspsaga hover_doc<CR>", { buffer = buffer, desc = "Lspsaga hover_doc" })
      --     end
      --
      keys[#keys + 1] = { "gd", "<CMD>Lspsaga goto_definition<CR>" }
      keys[#keys + 1] = { "gr", "<CMD>Lspsaga finder<CR>" }
      keys[#keys + 1] = { "gD", false }

      keys[#keys + 1] = { "<space>ca", "<CMD>Lspsaga code_action<CR>" }
      keys[#keys + 1] = { "<space>ca", "<CMD>Lspsaga code_action<CR>" }
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
      keys[#keys + 1] = { "[e", false }
      keys[#keys + 1] = { "]e", false }
      keys[#keys + 1] = { "[w", false }
      keys[#keys + 1] = { "]w", false }
      keys[#keys + 1] = { "[d", false }

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
      }

      keys[#keys + 1] = {
        "[w",
        function()
          require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.WARN })
        end,
      }

      keys[#keys + 1] = {
        "]e",
        function()
          require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
        end,
      }

      keys[#keys + 1] = {
        "[e",
        function()
          require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
        end,
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
