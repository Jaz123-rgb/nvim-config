return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                javascript = { "prettier" },
                typescript = { "prettier" },
                javascriptreact = { "prettier" },
                typescriptreact = { "prettier" },
                svelte = { "prettier" },
                css = { "prettier" },
                html = { "prettier" },
                json = { "prettier" },
                yaml = { "prettier" },
                markdown = { "prettier" },
                graphql = { "prettier" },
                liquid = { "prettier" },
                lua = { "stylua" },
                python = { "isort", "black" },
                csharp = { "csharpier" },
                go = { "golines", "goimports-reviser", "goimports" },
                java = { "google-java-format" },
                c = { "clang-format" },
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            },
        })

        -- Mapeo de teclas para mostrar descripción
        vim.keymap.set({ "n", "v" }, "<leader>m", function()
            print("Formato de archivo: opciones de formateo disponibles.")
        end, { desc = "Mostrar opciones de formateo" })

        -- Mapeo de teclas para formatear
        vim.keymap.set({ "n", "v" }, "<leader>mp", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            })
        end, { desc = "Formatear archivo o rango (en modo visual)" })
    end,
}
