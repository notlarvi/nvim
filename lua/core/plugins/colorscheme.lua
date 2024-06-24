--return { 
--    "rebelot/kanagawa.nvim", name = "kanagawa", priority = 1000,
--    config = function()
--        vim.cmd.colorscheme "kanagawa-dragon"
--    end
--}
-- example lazy.nvim install setup
return {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
    init = function()
        -- vim.cmd.colorscheme("lackluster")
        -- vim.cmd.colorscheme("lackluster-hack")
        vim.cmd.colorscheme("lackluster-mint")
    end,
}
