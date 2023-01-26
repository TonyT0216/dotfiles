return {
	{
		"AlexvZyl/nordic.nvim",
		branch = "main",
		lazy = false,
	},
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
	},
	{
		"JoosepAlviste/palenightfall.nvim",
		lazy = false,
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.opt.background = "dark"
			vim.cmd.colorscheme("oxocarbon")
		end,
	},
	{
		"projekt0n/github-nvim-theme",
		lazy = false,
		version = "*",
	},
	{
		"sainnhe/edge",
		lazy = false,
	},
	{
		"savq/melange-nvim",
		name = "melange",
		lazy = false,
	},
}
