vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'

-- Color scheme
vim.cmd [[colorscheme tender]]
vim.cmd [[let g:lightline = { 'colorscheme': 'tender' }]]

-- Comment color (Light blue for readablity)
vim.cmd [[hi Comment guifg=#80a0ff]]

-- Line number color
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg='#FFFFFF', bold=true })
vim.api.nvim_set_hl(0, 'LineNr', { fg='#80A0FF', bold=true })
