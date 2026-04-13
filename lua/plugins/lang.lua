return {
  -- Treesitter: add c_sharp + ensure Next.js-relevant parsers are present
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "c_sharp",
        "tsx",
        "typescript",
        "javascript",
        "html",
        "css",
        "json",
        "jsonc",
      })
    end,
  },

  -- Ensure prettier is installed for TS/JS formatting
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "prettier" },
    },
  },

  -- Auto-close/rename JSX & HTML tags (already installed, make sure it's enabled)
  {
    "windwp/nvim-ts-autotag",
    opts = {},
  },

  -- Formatter: use csharpier for C#
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        cs = { "csharpier" },
      },
    },
  },
}
