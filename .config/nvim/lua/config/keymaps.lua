-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

--VS Code + vscode-nvim keybindings
if vim.g.vscode then
  vim.keymap.set(
    "n",
    "<leader>ge",
    "<Cmd>lua require('vscode').action('editor.action.marker.next')<CR>",
    { desc = "Go to next error" }
  )
  vim.keymap.set(
    "n",
    "<leader>gE",
    "<Cmd>lua require('vscode').action('editor.action.marker.prev')<CR>",
    { desc = "Go to previous error" }
  )
end
