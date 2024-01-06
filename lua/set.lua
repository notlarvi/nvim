require "helpers/global"
vim.wo.number = true
vim.wo.relativenumber = true

-- Tabs {{{
opt.expandtab = true                -- Use spaces by default
opt.shiftwidth = 4                  -- Set amount of space characters, when we press "<" or ">"
opt.tabstop = 4                     -- 1 tab equal 2 spaces
opt.smartindent = true              -- Turn on smart indentation. See in the docs for more info
-- }}}
vim.cmd("colorscheme kanagawa-dragon")
