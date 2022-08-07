vim.cmd('let mapleader=" "')
vim.cmd('set relativenumber')
vim.cmd('nnoremap sr :set splitright<CR>:vsplit<CR>')
vim.cmd('nnoremap sl :set nosplitright<CR>:vsplit<CR>')
vim.cmd('nnoremap su :set nosplitbelow<CR>:split<CR>')
vim.cmd('nnoremap se :set splitbelow<CR>:split<CR>')
vim.cmd('nnoremap sh <C-w>t<C-w>H')
vim.cmd('nnoremap sk <C-w>t<C-w>K')
vim.cmd('nnoremap <LEADER>l <C-w>l')
vim.cmd('nnoremap <LEADER>k <C-w>k')
vim.cmd('nnoremap <LEADER>h <C-w>h')
vim.cmd('nnoremap <LEADER>j <C-w>j')
vim.cmd('nnoremap Q :q<CR>')
vim.cmd('nnoremap S :w<CR>')
vim.cmd('nnoremap R :source $MYVIMRC<CR>')
vim.cmd('noremap <up> :res +5<CR>')
vim.cmd('noremap <down> :res -5<CR>')
vim.cmd('noremap <left> :vertical resize-5<CR>')
vim.cmd('noremap <right> :vertical resize+5<CR>')
vim.cmd('noremap tn :tabe<CR>')
vim.cmd('noremap th :-tabnext<CR>')
vim.cmd('noremap <right> :vertical resize+5<CR>')
vim.o.number = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.termguicolors = true
vim.o.cursorline = true


require('init-packer')
require('init-lsp')
