return {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    config = function ()
        require('neorg').setup(
        {
            load = {
                ["core.integrations.nvim-cmp"] = {},
                ["core.defaults"] = {},
                ["core.concealer"] = {},
                ["core.dirman"] = {
                    config = {
                        workspaces = {
                            vault = "~/Vault",
                        },
                    },
                    default_workspace = "vault",
                },
            },

        })
        vim.wo.foldlevel = 99
        vim.wo.conceallevel = 2
    end,
}
