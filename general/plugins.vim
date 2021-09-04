" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
" Make sure you use single quotes
call plug#begin('~/.vim/plugged')

" Indented groups are order dependent
Plug 'leafgarland/typescript-vim' |
  Plug 'peitalin/vim-jsx-typescript'

Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-buffer' |
  Plug 'hrsh7th/cmp-nvim-lua' |
  Plug 'hrsh7th/cmp-nvim-lsp' |
  Plug 'hrsh7th/cmp-path' |
  Plug 'hrsh7th/cmp-calc' |
  Plug 'quangnguyen30192/cmp-nvim-ultisnips' |

  Plug 'codota/tabnine-vim' |
    Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }

Plug 'nvim-lua/plenary.nvim' |
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} | " We recommend updating the parsers on update
  Plug 'sharkdp/bat' |
  Plug 'nvim-telescope/telescope.nvim'

Plug 'neovim/nvim-lspconfig' |
  Plug 'kabouzeid/nvim-lspinstall'

" Sort command:
" :'<,'>sort /\/[A-z]/ ri
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'sbdchd/neoformat'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'mbbill/undotree'
Plug 'hrsh7th/vim-vsnip'
Plug 'tpope/vim-commentary'
Plug 'andymass/vim-matchup'
Plug 'skywind3000/asyncrun.vim'
Plug 'brandoncc/ultisnips-refactor.vim'
Plug 'brandoncc/vim-easylog'
Plug 'dag/vim-fish'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
" Plug 'tpope/vim-endwise'
Plug 'jremmen/vim-ripgrep'
Plug 'christoomey/vim-system-copy'
Plug 'vim-test/vim-test'
Plug 'michaeljsmith/vim-indent-object'
Plug 'vimwiki/vimwiki'

Plug 'ajh17/Spacegray.vim'

" Always load dev icons last!!
Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
call plug#end()


" Initialize plugin system
call plug#end()
