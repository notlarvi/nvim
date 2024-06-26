return { 
    -- "rose-pine/neovim", name = "rose-pine",
    "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000,
    --"EdenEast/nightfox.nvim",
    -- "rebelot/kanagawa.nvim", name = "kanagawa", priority = 1000,
    config = function()
        vim.cmd.colorscheme "moonfly"
    end
}
-- example lazy.nvim install setup
--return {
--    "slugbyte/lackluster.nvim",
--    lazy = false,
--    priority = 1000,
--    init = function()
--        -- vim.cmd.colorscheme("lackluster")
--        -- vim.cmd.colorscheme("lackluster-hack")
--        vim.cmd.colorscheme("lackluster-mint")
--    end,
--}
