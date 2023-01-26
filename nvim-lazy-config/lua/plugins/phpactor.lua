return {
	{
		"phpactor/phpactor",
		branch = "master",
		config = function()
			vim.cmd([[
				augroup PhpactorMappings
				au!
					au FileType php nmap <buffer> <Leader>pm :PhpactorContextMenu<CR>
					au FileType php nmap <buffer> <Leader>pn :PhpactorClassNew<CR>
				augroup END
        	]])
		end,
		ft = "php",
		run = "composer install --no-dev -o",
	},
}
