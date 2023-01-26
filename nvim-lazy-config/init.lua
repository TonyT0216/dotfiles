require("user.cfg.options")
require("user.cfg.lazy")

vim.api.nvim_create_autocmd("User", {
    pattern = "VeryLazy",
    callback = function()
        require("user.cfg.autocmds")
        require("user.cfg.keymaps")
    end,
})
