return {
  {
    "coder/claudecode.nvim",
    opts = {
      claude_binary = vim.fn.expand("~/.vscode/extensions/anthropic.claude-code-2.1.79-win32-x64/resources/native-binary/claude.exe"),
    },
    keys = {
      { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude Code" },
      { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send selection to Claude" },
    },
  },
}
