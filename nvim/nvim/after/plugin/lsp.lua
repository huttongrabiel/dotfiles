vim.opt.signcolumn = 'no'

local lsp = require('lsp-zero')

lsp.preset('recommended')

vim.keymap.set("n", "<leader>gd", function() vim.lsp.buf.definition() end, opts)
vim.keymap.set("n", "<leader>gh", function() vim.lsp.buf.hover() end, opts)
vim.keymap.set("n", "<leader>ge", function() vim.diagnostic.open_float() end, opts)
vim.keymap.set("n", "<leader>gr", function() vim.lsp.buf.references() end, opts)
vim.keymap.set("n", "<leader>gi", function() vim.lsp.buf.implementation() end, opts)
vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)

lsp.setup()
