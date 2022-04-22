call plug#begin()

" Start screen
Plug 'mhinz/vim-startify'

" Panel
Plug 'vim-airline/vim-airline'

" Explorer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Double quotes
Plug 'chun-yang/auto-pairs'
Plug 'tpope/vim-surround'

" All language support
Plug 'sheerun/vim-polyglot'

" Fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'

" Easy motion
Plug 'easymotion/vim-easymotion'

" LSP support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Git
Plug 'tpope/vim-fugitive'

" Prettier
Plug 'prettier/vim-prettier'

" Design
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'

" Emmet
Plug 'mattn/emmet-vim'

" Commentary
Plug 'tpope/vim-commentary'

" Go
Plug 'fatih/vim-go'

call plug#end()

let mapleader = ","

" Coc settings
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" Nerd tree settings
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeAutoDeleteBuffer = 1

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeIgnore = ['^node_modules$']
let NERDTreeShowHidden=1

" Emmet settings
let g:user_emmet_leader_key='<C-Z>'

" Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16_nord'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab0
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

" Easymotion settings
map <Leader> <Plug>(easymotion-prefix)

colorscheme nord
set guifont=FiraCodeNerdFont

syntax on 

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

set tabstop=4 
set shiftwidth=4
set smarttab
set expandtab 
set softtabstop=4 
set autoindent

set number
set relativenumber

set t_Co=256
set incsearch
set nu 
set mousehide 
set mouse=a 
set termencoding=utf-8 
set novisualbell 
set t_vb= 
set backspace=indent,eol,start whichwrap+=<,>,[,]
set showtabline=1

set wrap
set linebreak

set nobackup
set noswapfile
set fileencodings=utf8,cp1251

set clipboard=unnamed
set ruler

set hidden
" Disable sound in VIM
set visualbell t_vb=
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif



