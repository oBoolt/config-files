return {
    { 
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            terminal_colors = true,
        },
        config = function()
            vim.o.background = "dark"
            vim.cmd.colorscheme("gruvbox")
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end,
    },
}

