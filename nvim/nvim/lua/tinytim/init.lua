require("tinytim.packer");
require("tinytim.set");
require("tinytim.remap");

local tinytimgroup = vim.api.nvim_create_augroup("tinytim", {})
local autocmd = vim.api.nvim_create_autocmd

autocmd({ "BufWritePre", "LspAttach" }, {
    group = tinytimgroup,
    callback = function()
        vim.lsp.buf.format()
    end
})

autocmd({ "BufWritePre" }, {
    group = tinytimgroup,
    command = "%s/\\s\\+$//e",
})
