" Load plugins
source ~/.config/nvim/plug.vim

" TODO: Setup LSP
" lua require('lsp')

syntax on

set encoding=UTF-8

" Indentation
set smarttab
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent

set showmatch
set number
let mapleader = " "

" Disable search highlighting temporarily
nmap <Esc> :noh<cr>

" Don't store global and local values in a session
set ssop=options

" Auto delete all trailing whitespace characters on save
autocmd BufWritePre * %s/\s\+$//e

" Allow scrolling past the end of a file
set scrolloff=1

" Allow pairing brackets
set matchpairs+=<:>

" Save with Ctrl-S
nmap <C-s> :w<cr>
imap <C-s> <esc>:w<cr>
vmap <C-s> <esc>:w<cr>

" Store session with F2
map <F2> :mksession! ~/.vim_session<CR>
" Load session with F3
map <F3> :source ~/.vim_session<CR>

" Column ruler
fun! ToggleCC()
	if &cc == ''
		set cc=120
	else
		set cc=
	endif
endfun
set colorcolumn=120
nnoremap <leader>cc :call ToggleCC()<CR>

" Case sensitivity when searching
set ignorecase
set smartcase " Auto switch to case-sensitive if using any capitals

" TODO: Pull up a terminal
" nnoremap <C-`> :!

" Theming
" color panda

" === NERDTree ===
" Fire up NERDTree on startup
autocmd VimEnter * NERDTree | wincmd p

" Toggle NERDTree
nmap <leader>s<leader> :NERDTreeToggle<CR>:wincmd p<CR>

" Focus NERDTree
nmap <leader>se :NERDTree<CR>

" Fuzzy finding
nnoremap <C-p> :FuzzyOpen<CR>

