return {
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        sources = {
          { name = "codeium" },
          { name = "nvim_lsp" },
        },
      })
    end,
  },
}
