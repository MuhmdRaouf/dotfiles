-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- global vim options
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- disable perl
vim.g.loaded_perl_provider = 0

-- LSP Server to use for PHP.
-- Set to "intelephense" to use intelephense instead of phpactor.
vim.g.lazyvim_php_lsp = "intelephense"

-- LSP Server to use for Python.
-- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.lazyvim_python_lsp = "pyright"

-- LSP Server to use for Ruby.
-- Set to "solargraph" to use solargraph instead of ruby_lsp.
vim.g.lazyvim_ruby_lsp = "solargraph"
vim.g.lazyvim_ruby_formatter = "rubocop"
