return {
  "neovim/nvim-lspconfig",
  event = "LazyFile",
  dependencies = {
    "williamboman/mason.nvim",
    { "williamboman/mason-lspconfig.nvim", config = true },
    "simrat39/rust-tools.nvim",
    "nvim-lua/plenary.nvim", -- required for debugging
    "mfussenegger/nvim-dap", -- optional: Rust debugging
  },

  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { "rust_analyzer" },
    })
    local rt = require("rust-tools")

    rt.setup({
      server = {
        on_attach = function(_, bufnr)
          -- Hover actions
          vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
          -- Code action groups
          vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
        end,
      },
      -- Optional: configure inlay hints, etc.
      tools = {
        autoSetHints = true,
        hover_with_actions = true,
      },
    })
  end,
}
