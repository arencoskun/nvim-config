local opt = vim.opt

opt.number = true
opt.encoding = 'utf8'
opt.fileencoding = 'utf8'
opt.syntax = "ON"
opt.termguicolors = true
opt.ignorecase = true
opt.hlsearch = true
opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 4
opt.splitright = true
opt.splitbelow = true

--Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300) 

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error 
-- Show inlay_hints more frequently 
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
