local keymap = vim.keymap
-- これは記入済
keymap.set('n', 's', '<NOP>',{noremap = true})
-- 今回追加分
keymap.set('n', 'sr', '<cmd>lua require("telescope.builtin").oldfiles()<cr>',{noremap = true})
keymap.set('n', 'sf', '<cmd>lua require("telescope.builtin").find_files()<cr>',{noremap = true})
keymap.set('n', 'sb', '<cmd>lua require("telescope.builtin").buffers()<cr>',{noremap = true})
keymap.set('n', 'sh', '<cmd>lua require("telescope.builtin").help_tags()<cr>',{noremap = true})

--" <Leader>にSpaceキー割り当て
vim.cmd([[let mapleader = "\<Space>"]])
-- " 隠しファイルを表示する
vim.cmd([[let g:fern#default_hidden=1]])
-- " Fern .をSpace+eキーに置き換え
vim.cmd([[nnoremap <silent> <Leader>e <cmd>Fern . -reveal=% -drawer<CR>]])

vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser",
  { noremap = true }
)

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delet a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Selectt All
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true})
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true})
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true})
-- Move window
keymap.set('n', 's<left>', '<C-w>h')
keymap.set('n', 's<up>', '<C-w>k')
keymap.set('n', 's<down>', '<C-w>j')
keymap.set('n', 's<right>', '<C-w>l')
keymap.set('n', 'sh', '<C-w>h')
keymap.set('n', 'sk', '<C-w>k')
keymap.set('n', 'sj', '<C-w>j')
keymap.set('n', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Telescope keymapping
vim.keymap.set('n', 'sr', '<cmd>lua require("telescope.builtin").oldfiles()<cr>',{noremap = true})
