return {
  "David-Kunz/gen.nvim",
  cmd = { "Gen" },
  opts = {
    model = "phi3.5",
    display_mode = "split", -- The display mode. Can be "float" or "split".
    show_prompt = true,     -- Shows the prompt submitted to Ollama.
    show_model = true,      -- Displays which model you are using at the beginning of your chat session.
  },
  keys = {
    {
      "<leader>il",
      function()
        require("gen").select_model()
      end,
      desc = "Select model for LLM",
    },
    { mode = { "n", "v" }, "<leader>ia",  ":Gen Ask<CR>",                      desc = "A[I] [A]sk" },
    { mode = { "n", "v" }, "<leader>ic",  ":Gen Change<CR>",                   desc = "A[I] [C]hange" },
    { mode = { "n", "v" }, "<leader>icc", ":Gen Change_Code<CR>",              desc = "A[I] [C]hange [C]ode" },
    { mode = { "n", "v" }, "<leader>ih",  ":Gen Chat`<CR>",                    desc = "A[I] C[h]at" },
    { mode = { "n", "v" }, "<leader>ie",  ":Gen Enhance_Code<CR>",             desc = "A[I] [E]nhance code" },
    { mode = { "n", "v" }, "<leader>iew", ":Gen Enhance_Wording<CR>",          desc = "A[I] [E]nhance [W]ording" },
    { mode = { "n", "v" }, "<leader>ieg", ":Gen Enhance_Grammar_Spelling<CR>", desc = "A[I] [E]nhance [G]rammar" },
    { mode = { "n", "v" }, "<leader>ig",  ":Gen Generate<CR>",                 desc = "A[I] [G]enerate" },
    { mode = { "n", "v" }, "<leader>ir",  ":Gen Review_Code<CR>",              desc = "A[I] [R]eview Code" },
    { mode = { "n", "v" }, "<leader>is",  ":Gen Summarize<CR>",                desc = "A[I] [S]ummarize" },
  },
}
