vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
local autocmd = vim.api.nvim_create_autocmd
autocmd('LspAttach', {
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    end
})
--nnoremap crv <Cmd>lua require('jdtls').extract_variable()<CR>
--vnoremap crv <Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>
--nnoremap crc <Cmd>lua require('jdtls').extract_constant()<CR>
--vnoremap crc <Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>
--vnoremap crm <Esc><Cmd>lua require('jdtls').extract_method(true)<CR>


--" If using nvim-dap
--" This requires java-debug and vscode-java-test bundles, see install steps in this README further below.
--nnoremap <leader>df <Cmd>lua require'jdtls'.test_class()<CR>
--nnoremap <leader>dn <Cmd>lua require'jdtls'.test_nearest_method()<CR>

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
