-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.del("n", "<leader>w|")
vim.keymap.set("n", "<leader>wv", "<cmd>split<CR>")

vim.keymap.del("n", "<leader>w-")
vim.keymap.set("n", "<leader>ws", "<cmd>vsplit<CR>")

-- Yank into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y') -- yank motion
vim.keymap.set({ "n", "v" }, "<leader>Y", '"+Y') -- yank line

-- Delete into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", '"+d') -- delete motion
vim.keymap.set({ "n", "v" }, "<leader>D", '"+D') -- delete line

-- Paste from system clipboard
-- vim.keymap.set("n", "<leader>p", '"+p') -- paste after cursor
-- vim.keymap.set("n", "<leader>P", '"+P') -- paste before cursor
vim.keymap.set("n", "<leader>p", function()
  vim.api.nvim_command('normal "+p')
  vim.api.nvim_command("%s/\r//g")
end)

vim.keymap.set("n", "<M-k>", "<cmd>resize -5N<CR>")
vim.keymap.set("n", "<M-j>", "<cmd>resize +5N<CR>")
vim.keymap.set("n", "<M-h>", "<cmd>vertical resize -5N<CR>")
vim.keymap.set("n", "<M-l>", "<cmd>resize +5N<CR>")

vim.keymap.set("n", "<Tab>", "<cmd>bnext<CR>")
vim.keymap.set("n", "<S-Tab>", "<cmd>bprev<CR>")

vim.keymap.set(
  "n",
  "<leader>fw",
  "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
  { noremap = true }
)
vim.keymap.set("v", "<leader>[", "<cmd>w !python3<CR>")
