return {
    {
        "echasnovski/mini.tabline",
        config = function()
            require('mini.tabline').setup({
                show_file_icons = true,
                set_vim_settings = true,
            })
        end,
    },
}
