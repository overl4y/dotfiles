return {
    "m4xshen/autoclose.nvim",
    config = function ()
        require("autoclose").setup({
            keys = {
               -- [">"] = { escape = false, close = false, pair = "<>", disabled_filetypes = {} },
            },
            options = {
                disabled_filetypes = { "text", "markdown" },
            },
        })
    end
}
