vim.opt.number = true
-- -特殊文字表示
vim.opt.list = true
vim.opt.listchars = {tab='>-', trail='*', nbsp='+'}
-- -エラー時の音を画面表示に
vim.opt.visualbell = true
-- -括弧の連携
vim.opt.showmatch = true
vim.opt.matchtime = 1
-- -ヘルプファイル
vim.opt.helplang = 'ja', 'en'
-- -tabバーの表示
vim.opt.showtabline = 2

vim.cmd(":set autochdir")
-- 入力時
-- -インデントをC言語風に
vim.opt.smartindent = true
-- -タブ文字
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.smartindent = true

-- 検索
-- -大文字無視
vim.opt.ignorecase = true
-- -大文字で検索したら区別をつける
vim.opt.smartcase = true
-- -検索が末尾までいったら先頭から検索
vim.opt.wrapscan = true

-- カーソル移動
-- - 行を跨いでの移動
vim.opt.whichwrap =  'b', 's', 'h', 'l', '<', '>', '[', ']'
vim.cmd("set whichwrap=b,s,h,l,<,>,[,]")
-- - 削除時の対象
vim.opt.backspace = {'eol','start', 'indent'}

-- ファイル環境
-- -フォーマット
vim.opt.fileformats = 'dos', 'unix', 'mac'
vim.cmd([[set encoding=utf-8]])
vim.cmd([[set fileencodings=cp932,iso-2022-jp,euc-jp,sjis,utf-8]])

-- クリップボード連携
vim.cmd('set clipboard=unnamed')
-- マウス有効
vim.opt.mouse = 'a'

vim.opt.hlsearch = true
vim.opt.backup = false

-- vimg grepをripgrepに設定
vim.cmd([[let &grepprg='rg --vimgrep']])

-- normalモードへ移行したとき、IME OFF
vim.cmd('augroup fcitx')
vim.cmd('autocmd!')
vim.cmd("autocmd InsertLeave * :call system('fcitx-remote -c')")
vim.cmd("autocmd CmdlineLeave * :call system('fcitx-remote -c')")
vim.cmd('augroup END')

-- grepした際に、quickfixwindowを自動で開く 
vim.cmd('autocmd QuickFixCmdPost *grep* cwindow')

-- vimg grepをripgrepに設定
vim.cmd([[let &grepprg='rg --vimgrep']])


