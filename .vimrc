"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/tokinotoki/.vim/bundle/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/tokinotoki/.vim/bundle')
  call dein#begin('/Users/tokinotoki/.vim/bundle')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/tokinotoki/.vim/bundle/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  " dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

  call dein#add('thinca/vim-quickrun')

  " vim-airline setting
  call dein#add('tpope/vim-fugitive')
  call dein#add('bling/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts------------------------- 

set number
set autoindent
set tabstop=4 shiftwidth=2 softtabstop=2
syntax on

let g:airline_powerline_fonts = 1
"let g:airline_theme = 'molokai'
