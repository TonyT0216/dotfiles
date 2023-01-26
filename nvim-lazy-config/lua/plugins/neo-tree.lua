return {
    'nvim-neo-tree/neo-tree.nvim',
    branch = "v2.x",
    keys = {
        { "/", "<cmd>Neotree toggle current reveal_force_cwd<cr>", desc = "Toggle Tree (Change cwd)" },
        { "|", "<cmd>Neotree reveal<cr>", desc = "Toggle Tree and Focus" },
        { "nf", "<cmd>Neotree float reveal_file=<cfile> reveal_force_cwd<cr>", desc = "Toggle Tree and Float"},
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    }
}
