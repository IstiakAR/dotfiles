-- NOTE: Use the following to disable warnings/errors.
--
-- golangci-lint
-- //nolint:<TOOL>,<TOOL> // <REASON: has to be another code comment delimiter inbetween>
--
-- staticcheck (on same line as issue)
-- //lint:ignore <CODE> <REASON>
--
-- gosec (on same line as issue or line above issue)
-- // #nosec <CODE> <REASON>
--
-- yamllint (on same line as issue or line above issue, or across whole file)
-- # yamllint disable-line rule:<RULE>
-- # yamllint disable rule:<RULE>
--
-- codespell
-- //codespell:ignore
return {
  {
    -- LINTING
    "mfussenegger/nvim-lint",
    config = function()
      local lint = require("lint")

      lint.linters_by_ft = {
        --go = { "codespell", "golangcilint" },
        html = { "htmlhint", "tidy" },
        -- javascript = { "eslint_d" },
        json = { "jsonlint" },
        jsonc = { "jsonlint" },
        -- lua = { "luacheck" },
        make = { "checkmake" },
        -- markdown = { "alex", "markdownlint", "woke" },
        --terraform = { "tflint", "trivy" },
        -- yaml = { "actionlint", "yamllint", "spectral" },
        ruby = { "rubocop" },
      }

      lint.linters.spectral.args = {
        "lint",
        "-f",
        "json",
        "--ruleset",
        "~/.spectral.yaml",
      }

      vim.api.nvim_create_autocmd({
        "BufReadPost",
        "BufWritePost",
        "InsertLeave",
      }, {
        group = vim.api.nvim_create_augroup("Linting", { clear = true }),
        callback = function(ev)
          -- print(string.format('event fired: %s', vim.inspect(ev)))
          -- print(vim.bo.filetype)
          if
            (string.find(ev.file, ".github/workflows/") or string.find(ev.file, ".github/actions/"))
            and vim.bo.filetype == "yaml"
          then
            lint.try_lint("actionlint")
          elseif vim.bo.filetype == "yaml" then
            local first_line = vim.fn.getline(1)
            if string.find(first_line, "openapi:") then
              print("trying spectral")
              lint.try_lint("spectral") -- INSTALL with `npm install -g @stoplight/spectral-cli`
            else
              print("trying yamllint")
              lint.try_lint("yamllint")
            end
          else
            lint.try_lint()
          end
        end,
      })
    end,
  },
}
