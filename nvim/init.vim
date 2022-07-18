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
Plug 'airblade/vim-gitgutter/'

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

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Nerd tree settings
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

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

set guifont=FiraCode\ Nerd\ Font:h7
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

" Tmux support
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif



