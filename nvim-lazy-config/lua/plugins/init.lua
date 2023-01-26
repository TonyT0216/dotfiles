return {
	{
		"AndrewRadev/splitjoin.vim",
		config = function()
			vim.g.splitjoin_html_attributes_bracket_on_new_line = 1
			vim.g.splitjoin_trailing_comma = 1
			vim.g.splitjoin_php_method_chain_full = 1
		end,
	},
	{ "MunifTanjim/nui.nvim" },
	{
		"andymass/vim-matchup",
		event = { "BufReadPost" },
		config = function()
			vim.g.matchup_matchparen_offscreen = { method = "popup" }
		end,
	},
	{
		"folke/persistence.nvim",
		event = "BufReadPre",
		config = true,
	},
	{ "nacro90/numb.nvim", event = "BufReadPre", config = true },
	{ "nvim-lua/plenary.nvim" },
	{
		"nvim-tree/nvim-web-devicons",
		config = { default = true },
	},
	{
		"numToStr/Comment.nvim",
		dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
		keys = { "gc", "gcc", "gbc" },
		config = function(_, _)
			local opts = {
				ignore = "^$",
				pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
			}
			require("Comment").setup(opts)
		end,
	},
	{
		"phaazon/mind.nvim",
		branch = "v2.2",
		config = true,
		lazy = false,
	},
	{
		"rcarriga/nvim-notify",
		event = "VeryLazy",
		opts = {
			timeout = 3000,
			max_height = function()
				return math.floor(vim.o.lines * 0.75)
			end,
			max_width = function()
				return math.floor(vim.o.columns * 0.75)
			end,
		},
		config = function(_, opts)
			require("notify").setup(opts)
			vim.notify = require("notify")
		end,
	},
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
		opts = {
			input = { relative = "editor" },
			select = {
				backend = { "telescope", "fzf", "builtin" },
			},
		},
	},
	{ "tpope/vim-surround", event = "BufReadPre" },
	{
		"weilbith/nvim-code-action-menu",
		cmd = "CodeActionMenu",
	},
}
