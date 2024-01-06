-- most of this was yanked from nvim-boilerplate
vim.g.mapleader = ' '
-- Bootstrap lazy
require "lazy-bootstrap"

local lazy = require("lazy")
lazy.setup("plugins")

-- Settings

-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
require "set"
require "keybindings"
