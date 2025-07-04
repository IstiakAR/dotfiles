return {
  "OXY2DEV/markview.nvim",
  lazy = false, -- Recommended, do not lazy-load
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("markview").setup({
      experimental = {
        -- check_rtp = false, -- disables the load order check entirely
        check_rtp_message = false, -- only hides the message, keeps the check
      },
    })
  end,
}
