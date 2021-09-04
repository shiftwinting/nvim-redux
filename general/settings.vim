set encoding=UTF-8
set showmatch
set matchpairs+=<:>
set hlsearch
set nocompatible
set ignorecase
set smartcase
set expandtab
set autoindent
set wildmode=longest,list
set cc=80
set hidden
set number
set relativenumber
set inccommand=split
set iskeyword-=-
set nofoldenable
set backspace=indent,eol,start
set timeoutlen=300
set list " show whitespace chars set in listchars

let mapleader = ' '

" fish shell compatibility
set shell=/bin/zsh
let $SHELL = "/bin/zsh"

set background=dark
colorscheme spacegray

highlight Comment guifg=#aaaaaa cterm=italic gui=italic

" for undotree
if has("persistent_undo")
  let target_path = expand('~/.vim/undodir')


  " create the directory and any parent directories
  " if the location does not exist.
  if !isdirectory(target_path)
    call mkdir(target_path, "p", 0700)
  endif

  let &undodir=target_path
  set undofile
endif

if (has("termguicolors"))
  set termguicolors
endif

if executable('rg')
  let g:rg_derive_root='true'
endif

let g:python3_host_prog='/usr/local/bin/python3'
let g:python_host_prog='/usr/bin/python2'

let g:diagnostic_enable_virtual_text = 1
