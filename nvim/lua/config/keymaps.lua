-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

--  Navigate vim panes with tmux nvim-tmux-navigation
local nvim_tmux_navigation = require("nvim-tmux-navigation")
vim.keymap.set("n", "<C-h>", nvim_tmux_navigation.NvimTmuxNavigateLeft)
vim.keymap.set("n", "<C-j>", nvim_tmux_navigation.NvimTmuxNavigateDown)
vim.keymap.set("n", "<C-k>", nvim_tmux_navigation.NvimTmuxNavigateUp)
vim.keymap.set("n", "<C-l>", nvim_tmux_navigation.NvimTmuxNavigateRight)
vim.keymap.set("n", "<C-\\>", nvim_tmux_navigation.NvimTmuxNavigateLastActive)
vim.keymap.set("n", "<C-Space>", nvim_tmux_navigation.NvimTmuxNavigateNext)