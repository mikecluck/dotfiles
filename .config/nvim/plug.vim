" Load and configure plugins
call plug#begin(stdpath('data') . '/plugged')
  Plug 'markvincze/panda-vim'

  Plug 'preservim/nerdtree' |
        \ Plug 'Xuyuanp/nerdtree-git-plugin'

  Plug 'cloudhead/neovim-fuzzy'

  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'

  Plug 'plasticboy/vim-markdown'

  Plug 'pirmd/gemini.vim'

  Plug 'ryanoasis/vim-devicons'
call plug#end()

" Enable git status icons in NERDTree
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

" === cloudhead/neovim-fuzzy ===
" Fix bug where it tries to use Mercurial
let g:fuzzy_rootcmds = [ ["git", "rev-parse", "--show-toplevel"] ]

" === plasticboy/vim-markdown ===
" Disable folding by default
let g:vim_markdown_folding_disabled = 1

