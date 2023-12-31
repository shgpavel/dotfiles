:set number
:set autoindent
:set tabstop=4
:set smarttab
:set softtabstop=4
:set shiftwidth=4
:set expandtab
:set mouse=a
:set relativenumber
:syntax enable


call plug#begin()

Plug 'kyazdani42/nvim-web-devicons'
Plug 'projekt0n/circles.nvim'
Plug 'racer-rust/vim-racer'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tc50cal/vim-terminal'
Plug 'terryma/vim-multiple-cursors'
Plug 'preservim/tagbar'
Plug 'yamatsum/nvim-nonicons'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'rstacruz/vim-coc-settings'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'lervag/vimtex'


let g:two_firewatch_italics=1
let g:afterglow_blackout=1
let g:coc_filetypes_enable = ['c', 'cpp', 'tex', 'go', 'py', 'rs', 'json', 'js', 'lhs', 'hs', 'md']
let g:mkdp_browser = 'firefox'
let vim_markdown_preview_github=1
let g:vimtex_general_viewer = 'firefox'

let g:airline_theme='ayu_mirage'
let g:airline_powerline_fonts = 1
let g:airline_section_b = '%{getcwd()}'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#tabs_label = ''
let g:airline#extensions#tabline#buffers_label = ''
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0


function! s:disable_coc_for_type()
    if index(g:coc_filetypes_enable, &filetype) == -1
        :silent! CocDisable
    else
        :silent! CocEnable
    endif
endfunction

:set encoding=UTF-8
:set completeopt=preview

call plug#end()


nnoremap <C-p> :MarkdownPreview<CR>
nnoremap <C-s> :MarkdownPreviewStop<CR>
nnoremap <C-l> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-w> :VimtexCompile<CR>
