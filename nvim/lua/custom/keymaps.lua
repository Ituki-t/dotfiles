vim.g.mapleader = " "

vim.keymap.set("i", "jj", "<Esc>", {
  silent = true,
  desc = "Exit insert mode",
})

vim.keymap.set("t", "jj", [[<C-\><C-n>]], {
  silent = true,
  desc = "Exit terminal mode",
})

vim.keymap.set("n", "y", '"+yy', {
  silent = true,
  desc = "Yank line to system clipboard",
})

vim.keymap.set("n", "<leader>-", "<cmd>split<CR>", {
  silent = true,
  desc = "Horizontal Split",
})

vim.keymap.set("n", "<leader>|", "<cmd>vsplit<CR>", {
  silent = true,
  desc = "Vertical Split",
})

vim.keymap.set("n", "<leader>t1", "<cmd>ToggleTerm 1<CR>", {
  silent = true,
  desc = "Terminal 1",
})

vim.keymap.set("n", "<leader>t2", "<cmd>ToggleTerm 2<CR>", {
  silent = true,
  desc = "Terminal 2",
})

vim.keymap.set("n", "<leader>t3", "<cmd>ToggleTerm 3<CR>", {
  silent = true,
  desc = "Terminal 3",
})

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {
  desc = "Find Files",
})

vim.keymap.set("n", "<leader>fg", builtin.live_grep, {
  desc = "Find Grep",
})

vim.keymap.set("n", "<leader>fb", builtin.buffers, {
  desc = "Find Buffers",
})

vim.keymap.set("n", "<leader>fh", builtin.help_tags, {
  desc = "Find Help",
})

vim.keymap.set("n", ";w", "<cmd>w<CR>", {
  silent = true,
  desc = "Save File",
})

vim.keymap.set("n", ";q", "<cmd>q<CR>", {
  silent = true,
  desc = "Quit File",
})
