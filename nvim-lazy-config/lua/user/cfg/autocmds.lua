local augroup = vim.api.nvim_create_augroup('init_cmds', {clear = true})
local autocmd = vim.api.nvim_create_autocmd
local command = vim.api.nvim_create_user_command
local fns = require("user.cfg.functions")

command('EditMacro', fns.edit_macro, {desc = 'Create/Edit macro in an input'})
command('GetSelection', fns.get_selection, {desc = 'Get selected text'})
command('SyntaxQuery', fns.syntax_query, {desc = 'Show highlight group'})
command('TrailspaceTrim', fns.trailspace_trim, {desc = 'Delete extra whitespace'})

autocmd('CmdWinEnter', {group = augroup, command = 'quit'})
autocmd('FileType', {
    group = augroup,
    pattern = {'qf', 'help', 'man', 'lspinfo', 'harpoon', 'null-ls-info'},
    command = 'nnoremap <buffer> q <cmd>quit<cr>'
})

autocmd('TextYankPost', {
    desc = 'highlight text after is copied',
    group = augroup,
    callback = function()
        vim.highlight.on_yank({higroup = 'Visual', timeout = 80})
    end
})
