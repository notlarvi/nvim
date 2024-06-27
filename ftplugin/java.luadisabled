-- See `:help vim.lsp.start_client` for an overview of the supported `config` options.
local jdtls = require('jdtls')
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

local home = os.getenv("HOME")
local workspace_dir = home .. '/.cache/jdtls/' .. project_name
local jdtls_dir = home .. '/.local/share/nvim/mason/packages/jdtls'
local config = {
    cmd = {
        'java', -- or '/path/to/java17_or_newer/bin/java'
        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.protocol=true',
        '-Dlog.level=ALL',
        '-Xmx1g',
        '--add-modules=ALL-SYSTEM',
        '--add-opens', 'java.base/java.util=ALL-UNNAMED',
        '--add-opens', 'java.base/java.lang=ALL-UNNAMED',

        -- 💀
        '-jar', jdtls_dir .. '/plugins/org.eclipse.equinox.launcher_1.6.800.v20240330-1250.jar',
        '-configuration', jdtls_dir .. '/config_linux',
        '-data', workspace_dir,
    },
    root_dir = vim.fs.root(0, {".git", "mvnw", "gradlew"}),
    settings = {
        extendedClientCapabilities = jdtls.extendedClientCapabilities, -- Idk what this does
        java = {
            home = '/usr/lib/jvm/java-17-openjdk-amd64',
            eclipse = {
                downloadSources = true,
            },
            configuration = {
                updateBuildConfiguration = "interactive",
                runtimes = {
                    {
                        name = "JavaSE-17",
                        path = "/usr/lib/jvm/java-17-openjdk/"
                    },
                    {
                        name = "JavaSE-21",
                        path = "/usr/lib/jvm/java-21-openjdk/"
                    }
                },
                maven = {
                    downloadSources = true,
                }
            }
        }
    },
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    on_attach = function(client, bufnr)
        -- https://github.com/mfussenegger/dotfiles/blob/833d634251ebf3bf7e9899ed06ac710735d392da/vim/.config/nvim/ftplugin/java.lua#L88-L94
        local opts = { silent = true, buffer = bufnr }
        vim.keymap.set('n', "<leader>lo", jdtls.organize_imports, { desc = 'Organize imports', buffer = bufnr })
        -- Should 'd' be reserved for debug?
--        vim.keymap.set('n', "<leader>df", jdtls.test_class, opts)
--        vim.keymap.set('n', "<leader>dn", jdtls.test_nearest_method, opts)
--        vim.keymap.set('n', '<leader>rv', jdtls.extract_variable_all, { desc = 'Extract variable', buffer = bufnr })
--        vim.keymap.set('v', '<leader>rm', [[<ESC><CMD>lua require('jdtls').extract_method(true)<CR>]],
--        { desc = 'Extract method', buffer = bufnr })
--        vim.keymap.set('n', '<leader>rc', jdtls.extract_constant, { desc = 'Extract constant', buffer = bufnr })
    end,
    init_options = {
        bundles = {}
    },
}
jdtls.start_or_attach(config)
