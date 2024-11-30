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
        -- https://github.com/codespell-project/codespell
        -- https://golangci-lint.run/
        go = { "codespell", "golangcilint" },
        -- https://htmlhint.com/
        -- https://www.html-tidy.org/
        html = { "htmlhint", "tidy" },
        -- https://github.com/mantoni/eslint_d.js
        javascript = { "eslint_d" },
        -- https://github.com/zaach/jsonlint
        json = { "jsonlint" },
        jsonc = { "jsonlint" },
        -- DISABLED: https://github.com/mpeterv/luacheck
        -- Was a problem with folke/neodev plugin
        -- lua = { "luacheck" },
        -- https://github.com/mrtazz/checkmake
        make = { "checkmake" },
        -- https://alexjs.com/
        -- https://github.com/DavidAnson/markdownlint
        -- https://docs.getwoke.tech/
        markdown = { "alex", "markdownlint", "woke" },
        -- https://github.com/terraform-linters/tflint
        -- https://github.com/aquasecurity/trivy (originally https://github.com/aquasecurity/tfsec)
        terraform = { "tflint", "trivy" },
        -- DISABLED: needed custom logic (see callback function below)
        -- https://github.com/rhysd/actionlint
        -- https://github.com/adrienverge/yamllint https://yamllint.readthedocs.io/en/stable/rules.html
        -- https://github.com/stoplightio/spectral
        -- yaml = { "actionlint", "yamllint", "spectral" },
        ruby = { "rubocop" },
      }

      -- Spectral requires a ruleset in the current directory
      -- Otherwise you have to specify a global one
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
