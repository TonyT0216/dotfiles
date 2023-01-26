local g = vim.g
local o = vim.opt

g.mapleader = ' '
g.maplocalleader = ' '

o.backup = true -- automatically save a backup file
o.backupdir:remove('.') -- keep backups out of the current directory
o.breakindent = true -- maintain indent when wrapping indented lines
o.clipboard = 'unnamedplus' -- Use Linux system clipboard
o.confirm = true -- ask for confirmation instead of erroring
o.expandtab = true
o.fillchars:append({ eob = ' ' }) -- remove the ~ from end of buffer
o.hidden = true
o.ignorecase = true
o.inccommand = 'nosplit'
o.list = true -- enable the below listchars
o.listchars = { tab = '▸ ', trail = '·' }
o.mouse = 'nvi'
o.number = true
o.redrawtime = 10000 -- Allow more time for loading syntax on large files
o.relativenumber = true
o.ruler = true
o.scrolloff = 8
o.shiftwidth = 4
o.shortmess:append({ I = true }) -- disable the splash screen
o.showmode = false
o.sidescrolloff = 8
o.signcolumn = 'yes:2'
o.smartcase = true
o.smartindent = true
o.softtabstop = 4
o.spell = true
o.splitbelow = true
o.splitright = true
o.swapfile = false
o.tabstop = 2
o.termguicolors = true
o.title = true
o.undofile = true -- persistent undo
o.updatetime = 10
o.wildmode = 'longest:full,full' -- complete the longest common match, and allow tabbing the results to fully complete them
o.wrap = false
