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

  -- Auto-close/rename JSX & HTML tags (already installed, make sure it's enabled)
  {
    "windwp/nvim-ts-autotag",
    opts = {},
  },
}
