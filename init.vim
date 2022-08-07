
"j__  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|
" q
let mapleader=" "
set nocompatible
set ignorecase
set smartcase
let &t_ut=''
set wrap
set visualbell
set autochdir
set exrc
set secure
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set listchars=tab:\|\ ,trail:▫
set scrolloff=4
set autoindent
set number
set relativenumber
set cursorline
set noexpandtab
set wildmenu
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" ================= split
nnoremap sl :set splitright<CR>:vsplit<CR>
nnoremap sL :set nosplitright<CR>:vsplit<CR>
nnoremap sJ :set nosplitbelow<CR>:split<CR>
nnoremap sj :set splitbelow<CR>:split<CR>
nnoremap sh <C-w>t<C-w>H
nnoremap sk <C-w>t<C-w>K
nnoremap <LEADER>l <C-w>l
nnoremap <LEADER>k <C-w>k
nnoremap <LEADER>h <C-w>h
nnoremap <LEADER>j <C-w>j


" ================= Basic Mapping ===================

noremap ; :
nnoremap = nzz
nnoremap -  Nzz
nnoremap Q :q<CR>
nnoremap S :w<CR>
nnoremap R :source $MYVIMRC<CR>

" ================= spelling check with <space>sc
map <LEADER>sc :set spell!<CR>

" ================= window operation

set scrolloff=5
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

" ================= tabe
noremap tn :tabe<CR>
noremap th :-tabnext<CR> 
noremap tl :+tabnext<CR>
" ================= plug
call plug#begin('~/.config/nvim/plugged')
" Treesitter
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/playground'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


" Pretty Dress
Plug 'theniceboy/nvim-deus'
"Plug 'arzg/vim-colors-xcode'

" Status line
Plug 'theniceboy/eleline.vim', { 'branch': 'no-scrollbar' }

" General Highlighter
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'RRethy/vim-illuminate'

" File navigation
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kevinhwang91/rnvimr'
Plug 'airblade/vim-rooter'
Plug 'pechorin/any-jump.vim'

" Debugger
" Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-c --enable-python --enable-go'}

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neoclide/coc.nvim', {'branch': 'release', 'tag': 'v0.0.79'}
Plug 'wellle/tmux-complete.vim'

" Snippets
" Plug 'SirVer/ultisnips'
Plug 'theniceboy/vim-snippets'

" Undo Tree
Plug 'mbbill/undotree'

" Git
Plug 'theniceboy/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
Plug 'theniceboy/fzf-gitignore', { 'do': ':UpdateRemotePlugins' }
"Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/agit.vim'
Plug 'kdheepak/lazygit.nvim'

" Tex
" Plug 'lervag/vimtex'

" CSharp
Plug 'OmniSharp/omnisharp-vim'
Plug 'ctrlpvim/ctrlp.vim' , { 'for': ['cs', 'vim-plug'] } " omnisharp-vim dependency

" HTML, CSS, JavaScript, Typescript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'neoclide/jsonc.vim'
Plug 'othree/html5.vim'
Plug 'alvan/vim-closetag'
" Plug 'hail2u/vim-css3-syntax' " , { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
" Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
" Plug 'pangloss/vim-javascript', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
" Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
" Plug 'jelera/vim-javascript-syntax', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
"Plug 'jaxbot/browserlink.vim'
Plug 'HerringtonDarkholme/yats.vim'
" Plug 'posva/vim-vue'
" Plug 'evanleck/vim-svelte', {'branch': 'main'}
" Plug 'leafOfTree/vim-svelte-plugin'
" Plug 'leafgarland/typescript-vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'pantharshit00/vim-prisma'

" Go
Plug 'fatih/vim-go' , { 'for': ['go', 'vim-plug'], 'tag': '*' }

" Python
Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
Plug 'tweekmonster/braceless.vim', { 'for' :['python', 'vim-plug'] }
"Plug 'vim-scripts/indentpython.vim', { 'for' :['python', 'vim-plug'] }
"Plug 'plytophogy/vim-virtualenv', { 'for' :['python', 'vim-plug'] }
"Plug 'tmhedberg/SimpylFold', { 'for' :['python', 'vim-plug'] }

" Flutter
Plug 'dart-lang/dart-vim-plugin'

" Ayu
Plug 'ayu-theme/ayu-vim'

" Swift
Plug 'keith/swift.vim'
Plug 'arzg/vim-swift'

" Markdown
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
Plug 'dkarter/bullets.vim'

" Other filetypes
Plug 'wlangstroth/vim-racket'
" Plug 'jceb/vim-orgmode', {'for': ['vim-plug', 'org']}

" Editor Enhancement
Plug 'petertriho/nvim-scrollbar'
Plug 'kevinhwang91/nvim-hlslens'
Plug 'ggandor/lightspeed.nvim'
"Plug 'Raimondi/delimitMate'
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi'
Plug 'tomtom/tcomment_vim' " in <space>cn to comment a line
Plug 'theniceboy/antovim' " gs to switch
Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'gcmt/wildfire.vim' " in Visual mode, type k' to select all text in '', or type k) k] k} kp
Plug 'junegunn/vim-after-object' " da= to delete what's after =
Plug 'godlygeek/tabular' " ga, or :Tabularize <regex> to align
Plug 'tpope/vim-capslock'	" Ctrl+L (insert) to toggle capslock
" Plug 'Konfekt/FastFold'
"Plug 'junegunn/vim-peekaboo'
"Plug 'wellle/context.vim'
Plug 'svermeulen/vim-subversive'
Plug 'theniceboy/argtextobj.vim'
Plug 'rhysd/clever-f.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'theniceboy/pair-maker.vim'
Plug 'theniceboy/vim-move'
" Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'Yggdroot/indentLine'

" For general writing
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-wordy'
"Plug 'ron89/thesaurus_query.vim'

" Bookmarks
" Plug 'MattesGroeger/vim-bookmarks'

" Find & Replace
Plug 'nvim-lua/plenary.nvim' " nvim-spectre dep
Plug 'nvim-pack/nvim-spectre'

" Documentation
" Plug 'KabbAmine/zeavim.vim' " <LEADER>z to find doc

" Mini Vim-APP
"Plug 'jceb/vim-orgmode'
"Plug 'mhinz/vim-startify'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'

" Vim Applications
Plug 'itchyny/calendar.vim'

" Other visual enhancement
Plug 'luochen1990/rainbow'
Plug 'mg979/vim-xtabline'
Plug 'ryanoasis/vim-devicons'
Plug 'wincent/terminus'
Plug 'kyazdani42/nvim-web-devicons'

" Other useful utilities
Plug 'lambdalisue/suda.vim' " do stuff like :sudowrite

" nerdtree
Plug 'preservim/nerdtree'
" Treesitter

Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'


Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()

" =========================== Coc
let g:coc_global_extensions = [
	\ 'coc-css',
	\ 'coc-diagnostic',
	\ 'coc-docker',
	\ 'coc-eslint',
	\ 'coc-explorer',
	\ 'coc-flutter-tools',
	\ 'coc-gitignore',
	\ 'coc-html',
	\ 'coc-import-cost',
	\ 'coc-java',
	\ 'coc-jest',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-omnisharp',
	\ 'coc-prettier',
	\ 'coc-prisma',
	\ 'coc-pyright',
	\ 'coc-snippets',
	\ 'coc-sourcekit',
	\ 'coc-stylelint',
	\ 'coc-syntax',
	\ 'https://github.com/theniceboy/coc-tailwindcss',
	\ 'coc-tasks',
	\ 'coc-translator',
	\ 'coc-tsserver',
	\ 'coc-vetur',
	\ 'coc-vimlsp',
	\ 'coc-yaml',
	\ 'coc-yank']
" Some servers have issues with backup files, see #649.
set nobackup


inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <c-o> coc#refresh()
nmap <silent> <LEADER>+ <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>- <Plug>(coc-diagnostic-next)

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" GoTo code navigation.
"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
" ==================== Undotree ====================
noremap L :UndotreeToggle<CR>
noremap tt :CocCommand explorer<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
function g:Undotree_CustomMap()
	nmap <buffer> u <plug>UndotreeNextState
	nmap <buffer> e <plug>UndotreePreviousState
	nmap <buffer> U 5<plug>UndotreeNextState
	nmap <buffer> E 5<plug>UndotreePreviousState

endfunc

" ==================== nvim-treesitter ====================
lua <<EOF
require'nvim-treesitter.configs'.setup {
	-- one of "all", "language", or a list of languages
	ensure_installed = {"typescript", "dart", "java", "c", "prisma", "bash", "go","tsx","json","yaml","swift","html","scss"},
	highlight = {
		enable = true,              -- false will disable the whole extension
		disable = { "rust" },  -- list of language that will be disabled
	},
indent = {
	enable =  false,
	disable = {},
	}
}
EOF

" =================== Ayu
set termguicolors
let ayucolor="dark"


" =================== nerdtree
nnoremap <LEADER>t :NERDTreeToggle<CR>
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif

set encoding=UTF-8
"Can be enabled or disabled
let g:webdevicons_enable_nerdtree = 1

"whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1

"adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1

"adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
""""""""""""""""""""""""""""""
"vim-nerdtree-syntax-highlight settings
""""""""""""""""""""""""""""""
"Highlight full name (not only icons). You need to add this if you don't have vim-devicons and want highlight.
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

"Highlight full name (not only icons). You need to add this if you don't have vim-devicons and want highlight.
let g:NERDTreeHighlightFolders = 1

"highlights the folder name
let g:NERDTreeHighlightFoldersFullName = 1

"you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:Turquoise = "40E0D0"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = "FE405F"
let s:git_orange = "F54D27"
let s:gray = "808A87"

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['o'] = s:gray " sets the color of o files to blue
let g:NERDTreeExtensionHighlightColor['h'] = s:blue " sets the color of h files to blue
let g:NERDTreeExtensionHighlightColor['c'] = s:green " sets the color of c files to blue
let g:NERDTreeExtensionHighlightColor['cpp'] = s:green " sets the color of cpp files to blue
let g:NERDTreeExtensionHighlightColor['c++'] = s:green " sets the color of c++ files to blue

" ==================== Markdown Settings ====================
" Snippets
source $HOME/.config/nvim/md-snippets.vim
" auto spell
autocmd BufRead,BufNewFile *.md setlocal spell

" ====================== FZF

noremap <c-h> :History<CR>
noremap <C-p> :FZF<CR>
noremap <C-f> :Ag<CR>
noremap <C-t> :BTags<CR>
noremap <C-l> :Lines<CR>
noremap <C-w> :Buffers<CR>
