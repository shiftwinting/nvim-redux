local vim = vim;
local filetypes = {
  javacript = "eslint",
  javascriptreact = "eslint",
  typescript = "eslint",
  typescriptreact = "eslint",
  css = "stylelint",
  scss = "stylelint",
  sass = "stylelint",
  less = "stylelint"
}

local linters = {
  eslint = {
    sourceName = "eslint",
    command = "eslint_d",
    rootPatterns = {".eslintrc.js", "package.json"},
    debounce = 100,
    args = {"--stdin", "--stdin-filename", "%filepath", "--format", "json"},
    parseJson = {
      errorsRoot = "[0].messages",
      line = "line",
      column = "column",
      endLine = "endLine",
      endColumn = "endColumn",
      message = "${message} [${ruleId}]",
      security = "severity"
    },
    securities = {[2] = "error", [1] = "warning"}
  },
  stylelint = {
    sourceName = "stylelint",
    command = "stylelint",
    rootPatterns = {
      ".stylelintrc",
      ".stylelintrc.json",
      ".stylelintrc.js", "package.json"
    },
    debounce = 100,
    args = {"--stdin", "--stdin-filename", "%filepath", "--formatter", "json"},
    parseJson = {
      errorsRoot = "[0].warnings",
      line = "line",
      column = "column",
      message = "${text}",
      security = "severity"
    },
    securities = {[2] = "error", [1] = "warning"}
  }
}

-- local formatters = {
--   eslint = {
--     command = "eslint_d",
--     args = {"--stdin", "--stdin-filename", "%filepath", "--fix-dry-run"},
--   },
--   stylelint = {
--     command = "stylelint",
--     args = {"--stdin-filepath", "%filepath", "--fix"}
--   }
-- }

-- local formatFiletypes = {
--   javascript = "eslint",
--   javascriptreact = "eslint",
--   typescript = "eslint",
--   typescriptreact = "eslint",
--   css = "stylelint",
--   scss = "stylelint",
--   sass = "stylelint",
--   less = "stylelint"
-- }

return {
  filetypes = vim.tbl_keys(filetypes),
  init_options = {
    filetypes = filetypes,
    linters = linters,
  }
};
