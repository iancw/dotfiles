filetype plugin indent on
syntax enable

colorscheme smyck

set number
set laststatus=2                                             " always show statusline
set tabstop=4                                                " actual tabs occupy 8 characters
set softtabstop=4                                            " insert mode tab and backspace use 4 spaces
set shiftwidth=4                                            " normal mode indentation commands use 4 spaces
set expandtab                                                " expand tabs to spaces
set listchars=tab:▸\ ,trail:▫
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type

set autoindent
set hlsearch

set backspace=2                                              " Fix broken backspace in some setups
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamed                                        " yank and paste with the system clipboard
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set list                                                     " show trailing whitespace
set ruler                                                    " show where you are
set scrolloff=3                                              " show context above/below cursorline
set showcmd
set smartcase                                                " case-sensitive search if any caps
" set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
" set wildmenu                                                 " show a navigable menu for tab completion
" set wildmode=longest,list,full

let mapleader=','
" nnoremap <leader>a :Ag<space>
" nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
" nnoremap <leader>f :NERDTreeFind<CR>
" nnoremap <leader>t :CtrlP<CR>
" nnoremap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>

packadd minpac
call minpac#init()

call minpac#add('scrooloose/nerdtree')
call minpac#add('iancw/vim-colors-smyck')
call minpac#add('kien/ctrlp.vim')
call minpac#add('rking/ag.vim')
" call minpac#add('neomake/neomake')
" call minpac#add('pangloss/vim-javascript')
call minpac#add('othree/yajs.vim')
call minpac#add('dag/vim-fish')

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Run NeoMake on read and write operations
" autocmd! BufReadPost,BufWritePost * Neomake
" let g:neomake_javascript_enabled_makers = ['eslint']
" let g:neomake_serialize = 1
" let g:neomake_serialize_abort_on_error = 1
" let g:neomake_verbose=3

" Enable basic mouse behavior such as resizing buffers.
set mouse=a
if exists('$TMUX')  " Support resizing in tmux
  set ttymouse=xterm2
endif

