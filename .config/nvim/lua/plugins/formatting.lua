return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {},
  require("conform").setup({
    formatters_by_ft = {
      lua = { "stylua" },
      -- Conform will run multiple formatters sequentially
      python = { "autopep8", "isort", "black", "pyink" },
      -- You can customize some of the format options for the filetype (:help conform.format)
      rust = { "rustfmt" },
      -- Conform will run the first available formatter
      javascript = { "prettierd", "prettier" },
      ruby = { "rubocop" },
    },
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  })
}
