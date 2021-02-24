call plug#begin(stdpath('data') . '/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'antoinemadec/coc-fzf'
Plug 'arzg/vim-colors-xcode'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'RRethy/vim-illuminate'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'voldikss/vim-floaterm'
Plug 'mhinz/vim-startify'
Plug 'brooth/far.vim'
Plug 'psliwka/vim-smoothie'
Plug 'terryma/vim-multiple-cursors'
Plug 'pantharshit00/vim-prisma'

if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
call plug#end()

source ~/.config/nvim/config/base.vim
source ~/.config/nvim/config/extended.vim
source ~/.config/nvim/config/plugins.vim

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
