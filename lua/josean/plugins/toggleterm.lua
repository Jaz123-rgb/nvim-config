return {
    -- amongst your other plugins
    { "akinsho/toggleterm.nvim", version = "*", config = true },

    vim.api.nvim_set_keymap("n", "<leader>e", "<cmd>ToggleTerm<CR>", { noremap = true }),
}
