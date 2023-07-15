local keymap = vim.keymap
-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Open/close tab
keymap.set('n', 'tn', ':tabedit<Return>', { silent = true })
keymap.set('n', 'tw', ':tabclose<Return>', { silent = true})
-- Switch tabs
keymap.set('n', 'tj', ':tabnext<Return>', { silent = true })
keymap.set('n', 'tk', ':tabprevious<Return>', { silent = true })

-- Spilt window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true})
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true})

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- NERD Tree
vim.cmd [[nnoremap <leader>n :NERDTreeFocus<CR>]]
vim.cmd [[nnoremap <C-n> :NERDTree<CR>]]
vim.cmd [[nnoremap <C-e> :NERDTreeToggle<CR>]]
vim.cmd [[nnoremap <C-f> :NERDTreeFind<CR>]]

-- Terminal map
vim.cmd [[tnoremap <Esc> <C-\><C-n>]]

-- Undo/Redo
vim.cmd [[nnoremap <C-z> <Esc>:undo<Return>]]
vim.cmd [[inoremap <C-z> <Esc>:undo<Return>i]]
vim.cmd [[nnoremap <C-y> <Esc>:redo<Return>]]
vim.cmd [[inoremap <C-y> <Esc>:redo<Return>i]]

-- Save
vim.cmd [[inoremap <C-s> <Esc>:w<Return>i]]
vim.cmd [[nnoremap <C-s> <Esc>:w<Return>]]

-- Indent
keymap.set('v', '<Tab>', '>')
keymap.set('v', '<S-Tab>', '<')
