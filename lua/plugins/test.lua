return {
  -- Jest adapter for TypeScript/JavaScript
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/neotest-jest",
      "Issafalcon/neotest-dotnet",
    },
    opts = function(_, opts)
      opts.adapters = opts.adapters or {}
      vim.list_extend(opts.adapters, {
        require("neotest-jest")({
          jestCommand = "npx jest",
          jestConfigFile = function()
            local file = vim.fn.expand("%:p")
            -- prefer a jest config local to the file's package
            if string.find(file, "/packages/") then
              return string.match(file, "(.-/[^/]+/)src") .. "jest.config.ts"
            end
            return vim.fn.getcwd() .. "/jest.config.ts"
          end,
          env = { CI = "true" },
          cwd = function()
            return vim.fn.getcwd()
          end,
        }),
        require("neotest-dotnet")({
          dap = { justMyCode = false },
        }),
      })
    end,
  },
}
