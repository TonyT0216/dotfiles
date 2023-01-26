local fns = require('user.cfg.functions')

local augroup = vim.api.nvim_create_augroup('mapping_cmds', {clear = true})
local autocmd = vim.api.nvim_create_autocmd

-- Bind options
local bind = vim.keymap.set
local remap = {remap = true}

vim.keymap.set('n', '<leader>k', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>Q', ':bufdo bdelete<CR>')

-- ========================================================================== --
-- ==                             KEY MAPPINGS                             == --
-- ========================================================================== --

-- Escape to normal mode
bind('', '<M-l>', '<Esc>')
bind('t', '<M-l>', '<C-\\><C-n>')
bind('c', '<M-l>', '<Esc>')
bind('i', '<M-l>', '<Esc>')

-- Scroll half page and center
bind('n', '<M-k>', '<C-u>M')
bind('n', '<M-j>', '<C-d>M')

-- Whatever you delete, make it go away
bind({'n', 'x'}, 'c','"_c')
bind({'n', 'x'}, 'C','"_C')
bind({'n', 'x'}, 'x','"_x')
bind('x', 'X','"_c')

-- ========================================================================== --
-- ==                           COMMAND MAPPINGS                           == --
-- ========================================================================== --

-- Moving lines and preserving indentation
bind('n', '<C-j>', ":move .+1<CR>==")
bind('n', '<C-k>', ":move .-2<CR>==")
bind('v', '<C-j>', ":move '>+1<CR>gv=gv")
bind('v', '<C-k>', ":move '<-2<CR>gv=gv")

-- Write file
bind('n', '<Leader>w', ':write<CR>')

-- Safe quit
bind('n', '<Leader>qq', ':quitall<CR>')

-- Force quit
bind('n', '<Leader>Q', ':quitall!<CR>')

-- Close buffer
bind('n', '<Leader>bq', ':bdelete<CR>')

-- Move to last active buffer
bind('n', '<Leader>bl', ':buffer #<CR>')

-- Navigate between buffers
bind('n', '[b', ':bprevious<CR>')
bind('n', ']b', ':bnext<CR>')

-- Open new tabpage
bind('n', '<Leader>tn', ':tabnew<CR>')

-- Navigate between tabpages
bind('n', '[t', ':tabprevious<CR>')
bind('n', ']t', ':tabnext<CR>')

-- Switch to the directory of the open buffer
bind('n', '<Leader>cd', ':lcd %:p:h<CR>:pwd<CR>')

-- ========================================================================== --
-- ==                           TOGGLE ELEMENTS                            == --
-- ========================================================================== --

-- Search result highlight
bind('n', '<Leader>uh', '<cmd>set invhlsearch<CR>')

-- Tabline
bind('n', '<Leader>ut', fns.toggle_opt('showtabline', 'o', 1, 0))

-- Line length ruler
bind('n', '<Leader>ul', fns.toggle_opt('colorcolumn', 'wo', '120', '0'))

-- Cursorline highlight
bind('n', '<Leader>uc', '<cmd>set invcursorline<CR>')

-- Line numbers
bind('n', '<Leader>un', '<cmd>set invnumber<CR>')

-- Relative line numbers
bind('n', '<Leader>ur', '<cmd>set invrelativenumber<CR>')

-- ========================================================================== --
-- ==                            MISCELLANEOUS                             == --
-- ========================================================================== --

-- Toggle indentline guides
bind('n', '<leader>ui', '<cmd>IndentBlanklineToggle<cr>')

-- Manage the quickfix list
bind('n', '[q', '<Plug>(qf_qf_previous)zz')
bind('n', ']q', '<Plug>(qf_qf_next)zz')
bind('n', '<Leader>cc', '<Plug>(qf_qf_toggle)')

autocmd('filetype', {
    pattern = 'qf',
    group = augroup,
    callback = function()
        local opts = {remap = true, buffer = true}

        -- Go to location under the cursor
        bind('n', '<CR>', '<CR>zz<C-w>w', {buffer = true})

        -- Go to next location and stay in the quickfix window
        bind('n', '<Up>', '<Plug>(qf_qf_previous)zz<C-w>w', opts)

        -- Go to previous location and stay in the quickfix window
        bind('n', '<Down>', '<Plug>(qf_qf_next)zz<C-w>w', opts)
    end
})
